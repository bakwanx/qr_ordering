import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:qr_ordering/features/cart/domain/entities/customization_selection_entity.dart';
import 'package:qr_ordering/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:qr_ordering/features/menu/domain/entities/menu_item_entity.dart';

void main() {
  late CartCubit cartCubit;

  setUp(() {
    cartCubit = CartCubit();
  });

  tearDown(() {
    cartCubit.close();
  });

  const testMenuItem = MenuItemEntity(
    id: 1,
    name: 'Burger',
    description: 'A delicious burger',
    price: 10.0,
    categoryId: 1,
    customizationGroups: [],
  );

  group('CartCubit', () {
    test('initial state has empty cart and zero totals', () {
      expect(cartCubit.state.cartItems, isEmpty);
      expect(cartCubit.state.subtotal, 0.0);
      expect(cartCubit.state.itemCount, 0);
    });

    blocTest<CartCubit, CartState>(
      'addItem adds item to cart and calculates subtotal correctly',
      build: () => cartCubit,
      act: (cubit) => cubit.addItem(testMenuItem, []),
      expect: () => [
        isA<CartState>()
            .having((s) => s.cartItems.length, 'cartItems length', 1)
            .having((s) => s.subtotal, 'subtotal', 10.0)
            .having((s) => s.itemCount, 'itemCount', 1),
      ],
    );

    blocTest<CartCubit, CartState>(
      'addItem with same item and customizations increases quantity',
      build: () => cartCubit,
      act: (cubit) {
        cubit.addItem(testMenuItem, []);
        cubit.addItem(testMenuItem, []);
      },
      skip: 1, // Skip the first emission
      expect: () => [
        isA<CartState>()
            .having((s) => s.cartItems.length, 'cartItems length', 1)
            .having((s) => s.cartItems.first.quantity, 'quantity', 2)
            .having((s) => s.subtotal, 'subtotal', 20.0),
      ],
    );

    blocTest<CartCubit, CartState>(
      'removeItem removes item from cart',
      build: () => cartCubit,
      act: (cubit) {
        cubit.addItem(testMenuItem, []);
        final itemId = cubit.state.cartItems.first.cartItemId;
        cubit.removeItem(itemId);
      },
      skip: 1,
      expect: () => [
        isA<CartState>().having((s) => s.cartItems, 'cartItems', isEmpty),
      ],
    );

    blocTest<CartCubit, CartState>(
      'updateQuantity recalculates total',
      build: () => cartCubit,
      act: (cubit) {
        cubit.addItem(testMenuItem, []);
        final itemId = cubit.state.cartItems.first.cartItemId;
        cubit.updateQuantity(itemId, 3);
      },
      skip: 1,
      expect: () => [
        isA<CartState>()
            .having((s) => s.cartItems.first.quantity, 'quantity', 3)
            .having((s) => s.subtotal, 'subtotal', 30.0),
      ],
    );
  });
}
