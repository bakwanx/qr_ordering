// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TableStatusModel _$TableStatusModelFromJson(Map<String, dynamic> json) =>
    _TableStatusModel(
      tableId: json['table_id'] as String?,
      status: json['status'] as String?,
      restaurantId: json['restaurant_id'] as String?,
      restaurantName: json['restaurant_name'] as String?,
    );

Map<String, dynamic> _$TableStatusModelToJson(_TableStatusModel instance) =>
    <String, dynamic>{
      'table_id': instance.tableId,
      'status': instance.status,
      'restaurant_id': instance.restaurantId,
      'restaurant_name': instance.restaurantName,
    };
