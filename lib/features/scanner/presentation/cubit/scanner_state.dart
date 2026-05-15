part of 'scanner_cubit.dart';

@freezed
sealed class ScannerState with _$ScannerState {
  ScannerState._();

  factory ScannerState({
    @Default(QrOrderingStatus.pure) QrOrderingStatus scanStatus,
    String? tableId,
    Failure? failure,
  }) = _ScannerState;
}
