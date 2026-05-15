part of 'menu_cubit.dart';

@freezed
sealed class MenuState with _$MenuState {
  MenuState._();

  factory MenuState({
    @Default(QrOrderingStatus.pure) QrOrderingStatus menuStatus,
    @Default('') String tableId,
    RestaurantEntity? restaurant,
    @Default([]) List<CategoryEntity> categories,
    @Default([]) List<MenuItemEntity> items,
    @Default([]) List<MenuItemEntity> filteredItems,
    int? selectedCategoryId,
    @Default('') String searchQuery,
    Failure? failure,
  }) = _MenuState;
}
