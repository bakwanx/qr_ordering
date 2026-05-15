part of 'order_cubit.dart';

@freezed
sealed class OrderState with _$OrderState {
  const factory OrderState({
    @Default(QrOrderingStatus.pure) QrOrderingStatus submitStatus,
    @Default(QrOrderingStatus.pure) QrOrderingStatus trackStatus,
    String? orderId,
    OrderStatusEntity? orderStatus,
    Failure? failure,
  }) = _OrderState;
}
