import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_entity.freezed.dart';

@freezed
sealed class RestaurantEntity with _$RestaurantEntity {
  const factory RestaurantEntity({
    required String id,
    required String name,
    required String tableId,
  }) = _RestaurantEntity;
}
