import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_ordering/core/cubit/qr_ordering_status.dart';
import 'package:qr_ordering/core/dependency_injection/dependency_injection.dart';
import 'package:qr_ordering/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:qr_ordering/features/order/domain/entities/create_order_request_entity.dart';
import 'package:qr_ordering/features/order/domain/entities/order_item_entity.dart';
import 'package:qr_ordering/features/order/domain/repositories/order_navigation_repository.dart';
import 'package:qr_ordering/features/order/presentation/cubit/order_cubit.dart';

class OrderConfirmationPage extends StatelessWidget {
  final String tableId;

  const OrderConfirmationPage({super.key, required this.tableId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrderCubit>(
      create: (_) => di<OrderCubit>(),
      child: BlocConsumer<OrderCubit, OrderState>(
        listener: (context, state) {
          if (state.submitStatus == QrOrderingStatus.submissionSuccess &&
              state.orderId != null) {
            context.read<CartCubit>().clearCart();
            di<OrderNavigationRepository>().goToOrderTrackingPage(
              context,
              tableId: tableId,
              orderId: state.orderId!,
            );
          } else if (state.submitStatus == QrOrderingStatus.submissionFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  state.failure?.message ?? 'Failed to submit order',
                ),
              ),
            );
          }
        },
        builder: (context, state) {
          final cartState = di<CartCubit>().state;
          final isLoading =
              state.submitStatus == QrOrderingStatus.submissionInProgress;

          return Scaffold(
            appBar: AppBar(title: const Text('Confirm Order')),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: cartState.cartItems.length,
                      itemBuilder: (context, index) {
                        final item = cartState.cartItems[index];
                        return ListTile(
                          title: Text(item.name),
                          subtitle: Text('Quantity: ${item.quantity}'),
                          trailing: Text(
                            '\$${item.subtotal.toStringAsFixed(2)}',
                          ),
                        );
                      },
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          '\$${cartState.subtotal.toStringAsFixed(2)}',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: isLoading || cartState.cartItems.isEmpty
                        ? null
                        : () {
                            final request = CreateOrderRequestEntity(
                              tableId: tableId,
                              customerNote: cartState.customerNote,
                              items: cartState.cartItems
                                  .map(
                                    (i) => OrderItemEntity(
                                      menuItemId: i.menuItemId,
                                      quantity: i.quantity,
                                      customizationOptionIds: i.customizations
                                          .map((c) => c.optionId)
                                          .toList(),
                                    ),
                                  )
                                  .toList(),
                            );
                            context.read<OrderCubit>().submitOrder(request);
                          },
                    child: isLoading
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Text('Confirm and Pay'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
