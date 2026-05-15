// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) =>
    _OrderItemModel(
      menuItemId: (json['menu_item_id'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      customizationOptionIds:
          (json['customization_option_ids'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
    );

Map<String, dynamic> _$OrderItemModelToJson(_OrderItemModel instance) =>
    <String, dynamic>{
      'menu_item_id': instance.menuItemId,
      'quantity': instance.quantity,
      'customization_option_ids': instance.customizationOptionIds,
    };
