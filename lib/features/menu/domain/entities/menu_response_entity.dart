import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_ordering/features/menu/domain/entities/category_entity.dart';
import 'package:qr_ordering/features/menu/domain/entities/menu_item_entity.dart';
import 'package:qr_ordering/features/menu/domain/entities/restaurant_entity.dart';

part 'menu_response_entity.freezed.dart';

@freezed
sealed class MenuResponseEntity with _$MenuResponseEntity {
  const factory MenuResponseEntity({
    required RestaurantEntity restaurant,
    required List<CategoryEntity> categories,
    required List<MenuItemEntity> items,
  }) = _MenuResponseEntity;
}
