import 'package:freezed_annotation/freezed_annotation.dart';

part 'customization_selection_entity.freezed.dart';

@freezed
sealed class CustomizationSelectionEntity with _$CustomizationSelectionEntity {
  const factory CustomizationSelectionEntity({
    required int optionId,
    required String optionName,
    required double priceModifier,
    required int quantity,
  }) = _CustomizationSelectionEntity;
}
