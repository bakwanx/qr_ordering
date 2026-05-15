import 'package:go_router/go_router.dart';
import 'package:qr_ordering/core/navigation/nav_list/scanner_nav.dart';
import 'package:qr_ordering/core/navigation/utils/util_router.dart';
import 'package:qr_ordering/features/scanner/presentation/pages/scanner_page.dart';

class ScannerRoutes extends RootRoute {
  ScannerRoutes()
      : super(
          path: ScannerNav.scanner.path,
          builder: (context, state) => const ScannerPage(),
          routes: const <RouteBase>[],
        );
}
