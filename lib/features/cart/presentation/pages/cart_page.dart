import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_ordering/core/dependency_injection/dependency_injection.dart';
import 'package:qr_ordering/features/cart/domain/repositories/cart_navigation_repository.dart';
import 'package:qr_ordering/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:qr_ordering/features/cart/presentation/widgets/cart_item_tile.dart';
import 'package:qr_ordering/features/cart/presentation/widgets/cart_summary_bar.dart';

class CartPage extends StatelessWidget {
  final String tableId;

  const CartPage({super.key, required this.tableId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        final screenWidth = MediaQuery.sizeOf(context).width;
        final isTablet = screenWidth >= 600;

        return Scaffold(
          appBar: AppBar(
            title: const Text('Your Cart'),
            actions: [
              if (state.cartItems.isNotEmpty)
                TextButton(
                  onPressed: () => context.read<CartCubit>().clearCart(),
                  child: Text(
                    'Clear',
                    style: TextStyle(color: Theme.of(context).colorScheme.error),
                  ),
                ),
            ],
          ),
          body: state.cartItems.isEmpty
              ? const _EmptyCart()
              : Column(
                  children: [
                    Expanded(
                      child: isTablet
                          ? _TabletLayout(state: state)
                          : _PhoneLayout(state: state),
                    ),
                    CartSummaryBar(
                      subtotal: state.subtotal,
                      itemCount: state.itemCount,
                      onCheckout: () {
                        di<CartNavigationRepository>()
                            .goToOrderConfirmationPage(
                          context,
                          tableId: tableId,
                          orderId: '',
                        );
                      },
                    ),
                  ],
                ),
        );
      },
    );
  }
}

class _PhoneLayout extends StatelessWidget {
  final CartState state;

  const _PhoneLayout({required this.state});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...state.cartItems.map((item) => CartItemTile(item: item)),
        _NoteField(),
        const SizedBox(height: 16),
      ],
    );
  }
}

class _TabletLayout extends StatelessWidget {
  final CartState state;

  const _TabletLayout({required this.state});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: ListView(
            children: state.cartItems.map((i) => CartItemTile(item: i)).toList(),
          ),
        ),
        const VerticalDivider(width: 1),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order Note',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                _NoteField(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _NoteField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      child: TextField(
        decoration: const InputDecoration(
          hintText: 'Add a note (e.g. No MSG please)',
          labelText: 'Order Note',
        ),
        maxLines: 3,
        onChanged: (v) => context.read<CartCubit>().updateNote(v),
      ),
    );
  }
}

class _EmptyCart extends StatelessWidget {
  const _EmptyCart();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.shopping_cart_outlined,
            size: 80,
            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.2),
          ),
          const SizedBox(height: 16),
          Text(
            'Your cart is empty',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(
            'Add items from the menu to get started',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
            ),
          ),
        ],
      ),
    );
  }
}
