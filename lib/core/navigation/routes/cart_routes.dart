import 'package:go_router/go_router.dart';
import 'package:qr_ordering/core/navigation/nav_list/cart_nav.dart';
import 'package:qr_ordering/core/navigation/utils/util_router.dart';
import 'package:qr_ordering/features/cart/presentation/pages/cart_page.dart';

class CartRoutes extends RootRoute {
  CartRoutes()
      : super(
          path: CartNav.cart.path,
          builder: (context, state) {
            final extra = state.extra as Map<String, dynamic>?;
            final tableId = extra?['tableId'] as String? ?? '';
            return CartPage(tableId: tableId);
          },
          routes: const <RouteBase>[],
        );
}
