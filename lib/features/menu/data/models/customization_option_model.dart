import 'package:freezed_annotation/freezed_annotation.dart';

part 'customization_option_model.freezed.dart';
part 'customization_option_model.g.dart';

@freezed
sealed class CustomizationOptionModel with _$CustomizationOptionModel {
  const factory CustomizationOptionModel({
    int? id,
    String? name,
    @JsonKey(name: 'price_modifier') double? priceModifier,
  }) = _CustomizationOptionModel;

  factory CustomizationOptionModel.fromJson(Map<String, dynamic> json) =>
      _$CustomizationOptionModelFromJson(json);
}
