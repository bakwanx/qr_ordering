import 'package:flutter/material.dart';
import 'package:qr_ordering/core/navigation/nav_list/menu_nav.dart';
import 'package:qr_ordering/core/navigation/utils/util_router.dart';
import 'package:qr_ordering/features/scanner/domain/repositories/scanner_navigation_repository.dart';

class ScannerNavigationRepositoryImpl implements ScannerNavigationRepository {
  @override
  void goToMenuPage(BuildContext context, {required String tableId}) {
    context.pushExtra(
      MenuNav.menu.fullpath,
      extra: {'tableId': tableId},
    );
  }
}
