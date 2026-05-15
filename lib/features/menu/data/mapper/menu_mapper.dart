import 'package:qr_ordering/core/utils/extension/safe_null_object.dart';
import 'package:qr_ordering/features/menu/data/models/category_model.dart';
import 'package:qr_ordering/features/menu/data/models/customization_group_model.dart';
import 'package:qr_ordering/features/menu/data/models/customization_option_model.dart';
import 'package:qr_ordering/features/menu/data/models/menu_item_model.dart';
import 'package:qr_ordering/features/menu/data/models/menu_response_model.dart';
import 'package:qr_ordering/features/menu/data/models/restaurant_model.dart';
import 'package:qr_ordering/features/menu/domain/entities/category_entity.dart';
import 'package:qr_ordering/features/menu/domain/entities/customization_group_entity.dart';
import 'package:qr_ordering/features/menu/domain/entities/customization_option_entity.dart';
import 'package:qr_ordering/features/menu/domain/entities/menu_item_entity.dart';
import 'package:qr_ordering/features/menu/domain/entities/menu_response_entity.dart';
import 'package:qr_ordering/features/menu/domain/entities/restaurant_entity.dart';

extension RestaurantMapper on RestaurantModel {
  RestaurantEntity toEntity() {
    return RestaurantEntity(
      id: id.orEmpty(),
      name: name.orEmpty(),
      tableId: tableId.orEmpty(),
    );
  }
}

extension CategoryMapper on CategoryModel {
  CategoryEntity toEntity() {
    return CategoryEntity(
      id: id ?? 0,
      name: name.orEmpty(),
      sortOrder: sortOrder ?? 0,
    );
  }
}

extension CustomizationOptionMapper on CustomizationOptionModel {
  CustomizationOptionEntity toEntity() {
    return CustomizationOptionEntity(
      id: id ?? 0,
      name: name.orEmpty(),
      priceModifier: priceModifier ?? 0.0,
    );
  }
}

extension CustomizationGroupMapper on CustomizationGroupModel {
  CustomizationGroupEntity toEntity() {
    return CustomizationGroupEntity(
      id: id ?? 0,
      name: name.orEmpty(),
      required: required ?? false,
      maxSelections: maxSelections ?? 1,
      options: options.map((o) => o.toEntity()).toList(),
    );
  }
}

extension MenuItemMapper on MenuItemModel {
  MenuItemEntity toEntity() {
    return MenuItemEntity(
      id: id ?? 0,
      name: name.orEmpty(),
      description: description.orEmpty(),
      price: price ?? 0.0,
      categoryId: categoryId ?? 0,
      imageUrl: imageUrl,
      customizationGroups:
          customizationGroups.map((g) => g.toEntity()).toList(),
    );
  }
}

extension MenuResponseMapper on MenuResponseModel {
  MenuResponseEntity toEntity() {
    return MenuResponseEntity(
      restaurant: restaurant?.toEntity() ??
          const RestaurantEntity(id: '', name: '', tableId: ''),
      categories: categories.map((c) => c.toEntity()).toList(),
      items: items.map((i) => i.toEntity()).toList(),
    );
  }
}
