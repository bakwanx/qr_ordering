// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TableStatusModel _$TableStatusModelFromJson(Map<String, dynamic> json) =>
    _TableStatusModel(
      tableId: json['id'] as String?,
      status: json['status'] as String?,
      restaurantId: json['restaurant_id'] as String?,
    );

Map<String, dynamic> _$TableStatusModelToJson(_TableStatusModel instance) =>
    <String, dynamic>{
      'id': instance.tableId,
      'status': instance.status,
      'restaurant_id': instance.restaurantId,
    };
