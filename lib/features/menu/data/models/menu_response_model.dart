import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_ordering/features/menu/data/models/category_model.dart';
import 'package:qr_ordering/features/menu/data/models/menu_item_model.dart';
import 'package:qr_ordering/features/menu/data/models/restaurant_model.dart';

part 'menu_response_model.freezed.dart';
part 'menu_response_model.g.dart';

@freezed
sealed class MenuResponseModel with _$MenuResponseModel {
  const factory MenuResponseModel({
    RestaurantModel? restaurant,
    @Default([]) List<CategoryModel> categories,
    @Default([]) List<MenuItemModel> items,
  }) = _MenuResponseModel;

  factory MenuResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MenuResponseModelFromJson(json);
}
