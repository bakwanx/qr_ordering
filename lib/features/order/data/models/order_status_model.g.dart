// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderStatusModel _$OrderStatusModelFromJson(Map<String, dynamic> json) =>
    _OrderStatusModel(
      id: json['id'] as String?,
      tableId: json['table_id'] as String?,
      status: json['status'] as String?,
      totalAmount: (json['total_amount'] as num?)?.toDouble(),
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$OrderStatusModelToJson(_OrderStatusModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'table_id': instance.tableId,
      'status': instance.status,
      'total_amount': instance.totalAmount,
      'created_at': instance.createdAt,
    };
