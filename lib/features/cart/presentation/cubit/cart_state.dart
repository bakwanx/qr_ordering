part of 'cart_cubit.dart';

@freezed
sealed class CartState with _$CartState {
  CartState._();

  factory CartState({
    @Default([]) List<CartItemEntity> cartItems,
    @Default('') String tableId,
    @Default('') String customerNote,
  }) = _CartState;

  int get itemCount => cartItems.fold(0, (sum, i) => sum + i.quantity);

  double get subtotal => cartItems.fold(0.0, (sum, i) => sum + i.subtotal);
}
