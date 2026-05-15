import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_ordering/core/cubit/qr_ordering_status.dart';
import 'package:qr_ordering/core/error/failure.dart';
import 'package:qr_ordering/features/order/domain/entities/create_order_request_entity.dart';
import 'package:qr_ordering/features/order/domain/entities/order_status_entity.dart';
import 'package:qr_ordering/features/order/domain/usecases/get_order_status_use_case.dart';
import 'package:qr_ordering/features/order/domain/usecases/submit_order_use_case.dart';

part 'order_state.dart';
part 'order_cubit.freezed.dart';

class OrderCubit extends Cubit<OrderState> {
  final SubmitOrderUseCase _submitOrderUseCase;
  final GetOrderStatusUseCase _getOrderStatusUseCase;
  Timer? _pollingTimer;

  OrderCubit(
    this._submitOrderUseCase,
    this._getOrderStatusUseCase,
  ) : super(const OrderState());

  @override
  Future<void> close() {
    _pollingTimer?.cancel();
    return super.close();
  }

  Future<void> submitOrder(CreateOrderRequestEntity request) async {
    emit(state.copyWith(
      submitStatus: QrOrderingStatus.submissionInProgress,
      failure: null,
    ));

    final result = await _submitOrderUseCase(request);
    
    result.fold(
      (failure) {
        emit(state.copyWith(
          submitStatus: QrOrderingStatus.submissionFailure,
          failure: failure,
        ));
      },
      (orderStatus) {
        emit(state.copyWith(
          submitStatus: QrOrderingStatus.submissionSuccess,
          orderId: orderStatus.id,
          orderStatus: orderStatus,
          failure: null,
        ));
      },
    );
  }

  Future<void> getOrderStatus(String orderId) async {
    emit(state.copyWith(
      trackStatus: QrOrderingStatus.submissionInProgress,
      failure: null,
    ));

    final result = await _getOrderStatusUseCase(orderId);

    result.fold(
      (failure) {
        emit(state.copyWith(
          trackStatus: QrOrderingStatus.submissionFailure,
          failure: failure,
        ));
      },
      (orderStatus) {
        emit(state.copyWith(
          trackStatus: QrOrderingStatus.submissionSuccess,
          orderId: orderStatus.id,
          orderStatus: orderStatus,
          failure: null,
        ));
      },
    );
  }

  void startPolling(String orderId) {
    getOrderStatus(orderId);
    _pollingTimer?.cancel();
    _pollingTimer = Timer.periodic(const Duration(seconds: 5), (timer) {
      getOrderStatus(orderId);
    });
  }

  void stopPolling() {
    _pollingTimer?.cancel();
    _pollingTimer = null;
  }
}
