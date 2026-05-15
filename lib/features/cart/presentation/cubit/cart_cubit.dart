import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:qr_ordering/features/cart/domain/entities/cart_item_entity.dart';
import 'package:qr_ordering/features/cart/domain/entities/customization_selection_entity.dart';
import 'package:qr_ordering/features/menu/domain/entities/menu_item_entity.dart';

part 'cart_state.dart';
part 'cart_cubit.freezed.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartState());

  static const _uuid = Uuid();

  void initTable(String tableId) {
    emit(state.copyWith(tableId: tableId));
  }

  void addItem(
    MenuItemEntity item,
    List<CustomizationSelectionEntity> customizations,
  ) {
    final existing = state.cartItems.where(
      (c) =>
          c.menuItemId == item.id &&
          _selectionsMatch(c.customizations, customizations),
    );

    if (existing.isNotEmpty) {
      final updated = state.cartItems.map((c) {
        if (c.cartItemId == existing.first.cartItemId) {
          return c.copyWith(quantity: c.quantity + 1);
        }
        return c;
      }).toList();
      emit(state.copyWith(cartItems: updated));
    } else {
      final newItem = CartItemEntity(
        cartItemId: _uuid.v4(),
        menuItemId: item.id,
        name: item.name,
        basePrice: item.price,
        quantity: 1,
        customizations: customizations,
        imageUrl: item.imageUrl,
      );
      emit(state.copyWith(cartItems: [...state.cartItems, newItem]));
    }
  }

  void removeItem(String cartItemId) {
    emit(
      state.copyWith(
        cartItems:
            state.cartItems.where((c) => c.cartItemId != cartItemId).toList(),
      ),
    );
  }

  void updateQuantity(String cartItemId, int quantity) {
    if (quantity <= 0) {
      removeItem(cartItemId);
      return;
    }
    emit(
      state.copyWith(
        cartItems: state.cartItems.map((c) {
          if (c.cartItemId == cartItemId) return c.copyWith(quantity: quantity);
          return c;
        }).toList(),
      ),
    );
  }

  void updateNote(String note) {
    emit(state.copyWith(customerNote: note));
  }

  void clearCart() {
    emit(CartState(tableId: state.tableId));
  }

  bool _selectionsMatch(
    List<CustomizationSelectionEntity> a,
    List<CustomizationSelectionEntity> b,
  ) {
    if (a.length != b.length) return false;
    final aIds = a.map((s) => s.optionId).toSet();
    final bIds = b.map((s) => s.optionId).toSet();
    return aIds.containsAll(bIds) && bIds.containsAll(aIds);
  }
}
