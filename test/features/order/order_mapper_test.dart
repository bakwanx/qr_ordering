import 'package:flutter_test/flutter_test.dart';
import 'package:qr_ordering/features/cart/domain/entities/cart_item_entity.dart';
import 'package:qr_ordering/features/order/data/models/order_item_model.dart';
import 'package:qr_ordering/features/order/data/mapper/order_mapper.dart';
import 'package:qr_ordering/features/order/domain/entities/order_item_entity.dart';

void main() {
  group('OrderMapper', () {
    test('OrderItemEntity toModel maps correctly and is null safe', () {
      const entity = OrderItemEntity(
        menuItemId: 1,
        quantity: 2,
        customizationOptionIds: [10, 11],
      );

      final model = entity.toModel();

      expect(model, isA<OrderItemModel>());
      expect(model.menuItemId, 1);
      expect(model.quantity, 2);
      expect(model.customizationOptionIds, [10, 11]);
    });
  });
}
