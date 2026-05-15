// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateOrderRequestModel _$CreateOrderRequestModelFromJson(
  Map<String, dynamic> json,
) => _CreateOrderRequestModel(
  tableId: json['table_id'] as String?,
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  customerNote: json['customer_note'] as String?,
);

Map<String, dynamic> _$CreateOrderRequestModelToJson(
  _CreateOrderRequestModel instance,
) => <String, dynamic>{
  'table_id': instance.tableId,
  'items': instance.items,
  'customer_note': instance.customerNote,
};
