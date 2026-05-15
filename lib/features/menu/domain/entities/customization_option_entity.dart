import 'package:freezed_annotation/freezed_annotation.dart';

part 'customization_option_entity.freezed.dart';

@freezed
sealed class CustomizationOptionEntity with _$CustomizationOptionEntity {
  const factory CustomizationOptionEntity({
    required int id,
    required String name,
    required double priceModifier,
  }) = _CustomizationOptionEntity;
}
