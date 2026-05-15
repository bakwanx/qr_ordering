// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customization_option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomizationOptionModel _$CustomizationOptionModelFromJson(
  Map<String, dynamic> json,
) => _CustomizationOptionModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  priceModifier: (json['price_modifier'] as num?)?.toDouble(),
);

Map<String, dynamic> _$CustomizationOptionModelToJson(
  _CustomizationOptionModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'price_modifier': instance.priceModifier,
};
