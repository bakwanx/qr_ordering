import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_ordering/core/cubit/qr_ordering_status.dart';
import 'package:qr_ordering/core/error/failure.dart';
import 'package:qr_ordering/features/scanner/domain/usecases/validate_table_use_case.dart';

part 'scanner_state.dart';
part 'scanner_cubit.freezed.dart';

class ScannerCubit extends Cubit<ScannerState> {
  ScannerCubit(this._validateTableUseCase) : super(ScannerState());

  final ValidateTableUseCase _validateTableUseCase;

  static const _qrScheme = 'ipot://table/';

  void onQrScanned(String rawValue) {
    if (!rawValue.startsWith(_qrScheme)) {
      emit(
        state.copyWith(
          scanStatus: QrOrderingStatus.invalid,
          tableId: null,
          failure: const UnknownFailure(
            message: 'Invalid QR code. Please scan a valid table QR.',
          ),
        ),
      );
      return;
    }

    final tableId = rawValue.replaceFirst(_qrScheme, '').trim();
    if (tableId.isEmpty) {
      emit(
        state.copyWith(
          scanStatus: QrOrderingStatus.invalid,
          tableId: null,
          failure: const UnknownFailure(
            message: 'QR code has an empty table ID.',
          ),
        ),
      );
      return;
    }

    validateTable(tableId);
  }

  Future<void> validateTable(String tableId) async {
    emit(
      state.copyWith(
        scanStatus: QrOrderingStatus.submissionInProgress,
        tableId: tableId,
        failure: null,
      ),
    );

    try {
      final result = await _validateTableUseCase(tableId);
      result.fold(
        (failure) {
          emit(
            state.copyWith(
              scanStatus: QrOrderingStatus.submissionFailure,
              failure: failure,
            ),
          );
        },
        (tableStatus) {
          emit(
            state.copyWith(
              scanStatus: QrOrderingStatus.submissionSuccess,
              tableId: tableStatus.tableId,
              failure: null,
            ),
          );
        },
      );
    } catch (e, s) {
      if (kDebugMode) {
        debugPrint('Parsing error st: ${s.toString()}');
        debugPrint('Parsing error ex: ${e.toString()}');
      }
      emit(
        state.copyWith(
          scanStatus: QrOrderingStatus.submissionFailure,
          failure: UnknownFailure(message: e.toString()),
        ),
      );
    }
  }

  void reset() {
    emit(ScannerState());
  }
}
