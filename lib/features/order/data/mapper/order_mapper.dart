import 'package:qr_ordering/core/utils/extension/safe_null_object.dart';
import 'package:qr_ordering/features/order/data/models/create_order_request_model.dart';
import 'package:qr_ordering/features/order/data/models/order_item_model.dart';
import 'package:qr_ordering/features/order/data/models/order_status_model.dart';
import 'package:qr_ordering/features/order/domain/entities/create_order_request_entity.dart';
import 'package:qr_ordering/features/order/domain/entities/order_item_entity.dart';
import 'package:qr_ordering/features/order/domain/entities/order_status_entity.dart';

extension OrderStatusMapper on OrderStatusModel {
  OrderStatusEntity toEntity() {
    return OrderStatusEntity(
      id: id.orEmpty(),
      tableId: tableId.orEmpty(),
      status: status.orEmpty(),
      totalAmount: totalAmount ?? 0.0,
      createdAt: DateTime.tryParse(createdAt.orEmpty()) ?? DateTime.now(),
    );
  }
}

extension OrderItemEntityMapper on OrderItemEntity {
  OrderItemModel toModel() {
    return OrderItemModel(
      menuItemId: menuItemId,
      quantity: quantity,
      customizationOptionIds: customizationOptionIds,
    );
  }
}

extension CreateOrderRequestEntityMapper on CreateOrderRequestEntity {
  CreateOrderRequestModel toModel() {
    return CreateOrderRequestModel(
      tableId: tableId,
      items: items.map((e) => e.toModel()).toList(),
      customerNote: customerNote,
    );
  }
}
