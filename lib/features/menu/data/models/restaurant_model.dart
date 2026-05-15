import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_model.freezed.dart';
part 'restaurant_model.g.dart';

@freezed
sealed class RestaurantModel with _$RestaurantModel {
  const factory RestaurantModel({
    String? id,
    String? name,
    @JsonKey(name: 'table_id') String? tableId,
  }) = _RestaurantModel;

  factory RestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantModelFromJson(json);
}
