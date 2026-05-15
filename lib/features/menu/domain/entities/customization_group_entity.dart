import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_ordering/features/menu/domain/entities/customization_option_entity.dart';

part 'customization_group_entity.freezed.dart';

@freezed
sealed class CustomizationGroupEntity with _$CustomizationGroupEntity {
  const factory CustomizationGroupEntity({
    required int id,
    required String name,
    required bool required,
    required int maxSelections,
    required List<CustomizationOptionEntity> options,
  }) = _CustomizationGroupEntity;
}
