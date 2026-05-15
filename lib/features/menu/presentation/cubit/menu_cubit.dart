import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_ordering/core/cubit/qr_ordering_status.dart';
import 'package:qr_ordering/core/error/failure.dart';
import 'package:qr_ordering/features/menu/domain/entities/category_entity.dart';
import 'package:qr_ordering/features/menu/domain/entities/menu_item_entity.dart';
import 'package:qr_ordering/features/menu/domain/entities/restaurant_entity.dart';
import 'package:qr_ordering/features/menu/domain/usecases/get_menu_use_case.dart';

part 'menu_state.dart';
part 'menu_cubit.freezed.dart';

class MenuCubit extends Cubit<MenuState> {
  MenuCubit(this._getMenuUseCase) : super(MenuState());

  final GetMenuUseCase _getMenuUseCase;

  Future<void> fetchMenu(String tableId) async {
    emit(
      state.copyWith(
        menuStatus: QrOrderingStatus.submissionInProgress,
        tableId: tableId,
        failure: null,
      ),
    );

    try {
      final result = await _getMenuUseCase(tableId);
      result.fold(
        (failure) {
          emit(
            state.copyWith(
              menuStatus: QrOrderingStatus.submissionFailure,
              failure: failure,
            ),
          );
        },
        (menuResponse) {
          final sortedCategories = [...menuResponse.categories]
            ..sort((a, b) => a.sortOrder.compareTo(b.sortOrder));

          emit(
            state.copyWith(
              menuStatus: QrOrderingStatus.submissionSuccess,
              restaurant: menuResponse.restaurant,
              categories: sortedCategories,
              items: menuResponse.items,
              filteredItems: menuResponse.items,
              selectedCategoryId:
                  sortedCategories.isNotEmpty ? sortedCategories.first.id : null,
              failure: null,
            ),
          );
        },
      );
    } catch (e) {
      emit(
        state.copyWith(
          menuStatus: QrOrderingStatus.submissionFailure,
          failure: UnknownFailure(message: e.toString()),
        ),
      );
    }
  }

  void selectCategory(int? categoryId) {
    final filtered = _applyFilters(
      items: state.items,
      categoryId: categoryId,
      query: state.searchQuery,
    );
    emit(
      state.copyWith(
        selectedCategoryId: categoryId,
        filteredItems: filtered,
      ),
    );
  }

  void search(String query) {
    final filtered = _applyFilters(
      items: state.items,
      categoryId: state.selectedCategoryId,
      query: query,
    );
    emit(
      state.copyWith(
        searchQuery: query,
        filteredItems: filtered,
      ),
    );
  }

  void clearSearch() {
    emit(
      state.copyWith(
        searchQuery: '',
        filteredItems: _applyFilters(
          items: state.items,
          categoryId: state.selectedCategoryId,
          query: '',
        ),
      ),
    );
  }

  List<MenuItemEntity> _applyFilters({
    required List<MenuItemEntity> items,
    required int? categoryId,
    required String query,
  }) {
    return items.where((item) {
      final matchesCategory =
          categoryId == null || item.categoryId == categoryId;
      final matchesQuery = query.isEmpty ||
          item.name.toLowerCase().contains(query.toLowerCase()) ||
          item.description.toLowerCase().contains(query.toLowerCase());
      return matchesCategory && matchesQuery;
    }).toList();
  }
}
