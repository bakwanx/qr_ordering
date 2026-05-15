import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_ordering/features/menu/data/models/customization_option_model.dart';

part 'customization_group_model.freezed.dart';
part 'customization_group_model.g.dart';

@freezed
sealed class CustomizationGroupModel with _$CustomizationGroupModel {
  const factory CustomizationGroupModel({
    int? id,
    String? name,
    bool? required,
    @JsonKey(name: 'max_selections') int? maxSelections,
    @Default([]) List<CustomizationOptionModel> options,
  }) = _CustomizationGroupModel;

  factory CustomizationGroupModel.fromJson(Map<String, dynamic> json) =>
      _$CustomizationGroupModelFromJson(json);
}
