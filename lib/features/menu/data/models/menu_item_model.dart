import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_ordering/features/menu/data/models/customization_group_model.dart';

part 'menu_item_model.freezed.dart';
part 'menu_item_model.g.dart';

@freezed
sealed class MenuItemModel with _$MenuItemModel {
  const factory MenuItemModel({
    int? id,
    String? name,
    String? description,
    double? price,
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'customization_groups')
    @Default([])
    List<CustomizationGroupModel> customizationGroups,
  }) = _MenuItemModel;

  factory MenuItemModel.fromJson(Map<String, dynamic> json) =>
      _$MenuItemModelFromJson(json);
}
