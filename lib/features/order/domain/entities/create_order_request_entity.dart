import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_ordering/features/order/domain/entities/order_item_entity.dart';

part 'create_order_request_entity.freezed.dart';

@freezed
sealed class CreateOrderRequestEntity with _$CreateOrderRequestEntity {
  const factory CreateOrderRequestEntity({
    required String tableId,
    required List<OrderItemEntity> items,
    String? customerNote,
  }) = _CreateOrderRequestEntity;
}
