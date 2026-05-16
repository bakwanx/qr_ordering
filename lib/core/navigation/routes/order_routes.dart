import 'package:go_router/go_router.dart';
import 'package:qr_ordering/core/navigation/nav_list/order_nav.dart';
import 'package:qr_ordering/core/navigation/utils/util_router.dart';
import 'package:qr_ordering/features/order/presentation/pages/order_confirmation_page.dart';
import 'package:qr_ordering/features/order/presentation/pages/order_tracking_page.dart';

class OrderRoutes extends RootRoute {
  OrderRoutes()
    : super(
        path: OrderNav.confirmation.path,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>?;
          final tableId = extra?['tableId'] as String? ?? '';
          return OrderConfirmationPage(tableId: tableId);
        },
        routes: [
          GoRoute(
            path: OrderNav.tracking.path.replaceAll('/', ''),
            builder: (context, state) {
              final extra = state.extra as Map<String, dynamic>?;
              final tableId = extra?['tableId'] as String? ?? '';
              final orderId = extra?['orderId'] as String? ?? '';
              return OrderTrackingPage(tableId: tableId, orderId: orderId);
            },
          ),
        ],
      );
}
