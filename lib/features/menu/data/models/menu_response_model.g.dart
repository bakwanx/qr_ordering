// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MenuResponseModel _$MenuResponseModelFromJson(Map<String, dynamic> json) =>
    _MenuResponseModel(
      restaurant: json['restaurant'] == null
          ? null
          : RestaurantModel.fromJson(
              json['restaurant'] as Map<String, dynamic>,
            ),
      categories:
          (json['categories'] as List<dynamic>?)
              ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => MenuItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$MenuResponseModelToJson(_MenuResponseModel instance) =>
    <String, dynamic>{
      'restaurant': instance.restaurant,
      'categories': instance.categories,
      'items': instance.items,
    };
