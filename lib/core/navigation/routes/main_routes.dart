import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_ordering/core/navigation/nav_list/scanner_nav.dart';
import 'package:qr_ordering/core/navigation/routes/cart_routes.dart';
import 'package:qr_ordering/core/navigation/routes/menu_routes.dart';
import 'package:qr_ordering/core/navigation/routes/order_routes.dart';
import 'package:qr_ordering/core/navigation/routes/scanner_routes.dart';
import 'package:qr_ordering/core/navigation/utils/util_router.dart';

class MainRoutes {
  MainRoutes._();

  static GoRouter get router => GoRouter(
    initialLocation: ScannerNav.scanner.path,
    debugLogDiagnostics: kDebugMode,
    navigatorKey: rootNavigatorKey,
    routes: [ScannerRoutes(), MenuRoutes(), CartRoutes(), OrderRoutes()],
  );
}
