import 'package:go_router/go_router.dart';
import 'package:qr_ordering/core/navigation/nav_list/menu_nav.dart';
import 'package:qr_ordering/core/navigation/utils/util_router.dart';
import 'package:qr_ordering/features/menu/presentation/pages/menu_page.dart';

class MenuRoutes extends RootRoute {
  MenuRoutes()
      : super(
          path: MenuNav.menu.path,
          builder: (context, state) {
            final extra = state.extra as Map<String, dynamic>?;
            final tableId = extra?['tableId'] as String? ?? '';
            return MenuPage(tableId: tableId);
          },
          routes: const <RouteBase>[],
        );
}
