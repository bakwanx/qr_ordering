import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_ordering/features/menu/domain/entities/customization_group_entity.dart';

part 'menu_item_entity.freezed.dart';

@freezed
sealed class MenuItemEntity with _$MenuItemEntity {
  const factory MenuItemEntity({
    required int id,
    required String name,
    required String description,
    required double price,
    required int categoryId,
    String? imageUrl,
    required List<CustomizationGroupEntity> customizationGroups,
  }) = _MenuItemEntity;
}
