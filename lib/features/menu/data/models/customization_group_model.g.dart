// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customization_group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomizationGroupModel _$CustomizationGroupModelFromJson(
  Map<String, dynamic> json,
) => _CustomizationGroupModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  required: json['required'] as bool?,
  maxSelections: (json['max_selections'] as num?)?.toInt(),
  options:
      (json['options'] as List<dynamic>?)
          ?.map(
            (e) => CustomizationOptionModel.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$CustomizationGroupModelToJson(
  _CustomizationGroupModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'required': instance.required,
  'max_selections': instance.maxSelections,
  'options': instance.options,
};
