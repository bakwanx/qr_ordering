import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_ordering/features/cart/domain/entities/customization_selection_entity.dart';

part 'cart_item_entity.freezed.dart';

@freezed
sealed class CartItemEntity with _$CartItemEntity {
  const CartItemEntity._();

  const factory CartItemEntity({
    required String cartItemId,
    required int menuItemId,
    required String name,
    required double basePrice,
    required int quantity,
    required List<CustomizationSelectionEntity> customizations,
    String? imageUrl,
  }) = _CartItemEntity;

  double get customizationTotal => customizations.fold(
        0.0,
        (sum, c) => sum + c.priceModifier * c.quantity,
      );

  double get unitPrice => basePrice + customizationTotal;

  double get subtotal => unitPrice * quantity;
}
