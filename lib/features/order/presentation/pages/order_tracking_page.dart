import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_ordering/core/cubit/qr_ordering_status.dart';
import 'package:qr_ordering/core/dependency_injection/dependency_injection.dart';
import 'package:qr_ordering/features/order/domain/repositories/order_navigation_repository.dart';
import 'package:qr_ordering/features/order/presentation/cubit/order_cubit.dart';
import 'package:qr_ordering/features/order/presentation/widgets/order_status_stepper.dart';

class OrderTrackingPage extends StatelessWidget {
  final String tableId;
  final String orderId;

  const OrderTrackingPage({
    super.key,
    required this.tableId,
    required this.orderId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrderCubit>(
      create: (_) => di<OrderCubit>()..startPolling(orderId),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Order Status'),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                di<OrderNavigationRepository>().goToMenuPage(context, tableId: tableId);
              },
            ),
          ],
        ),
        body: BlocBuilder<OrderCubit, OrderState>(
          builder: (context, state) {
            if (state.trackStatus == QrOrderingStatus.submissionInProgress && state.orderStatus == null) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.trackStatus == QrOrderingStatus.submissionFailure && state.orderStatus == null) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Failed to load order status: ${state.failure?.message}'),
                    ElevatedButton(
                      onPressed: () => context.read<OrderCubit>().getOrderStatus(orderId),
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              );
            }

            final orderStatus = state.orderStatus;
            if (orderStatus == null) {
              return const Center(child: Text('Order not found.'));
            }

            return Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Order #${orderStatus.id.substring(0, 8)}',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Table ${orderStatus.tableId}',
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  Expanded(
                    child: Center(
                      child: OrderStatusStepper(status: orderStatus.status),
                    ),
                  ),
                  if (orderStatus.status.toLowerCase() == 'served') ...[
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () {
                        di<OrderNavigationRepository>().goToMenuPage(context, tableId: tableId);
                      },
                      child: const Text('Back to Menu'),
                    ),
                  ]
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
