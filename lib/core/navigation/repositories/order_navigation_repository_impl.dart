import 'package:flutter/material.dart';
import 'package:qr_ordering/core/navigation/nav_list/menu_nav.dart';
import 'package:qr_ordering/core/navigation/nav_list/order_nav.dart';
import 'package:qr_ordering/core/navigation/utils/util_router.dart';
import 'package:qr_ordering/features/order/domain/repositories/order_navigation_repository.dart';

class OrderNavigationRepositoryImpl implements OrderNavigationRepository {
  @override
  void goToOrderTrackingPage(BuildContext context, {required String tableId, required String orderId}) {
    context.pushReplacementExtra(
      OrderNav.tracking.fullpath,
      extra: {'tableId': tableId, 'orderId': orderId},
    );
  }

  @override
  void goToMenuPage(BuildContext context, {required String tableId}) {
    context.goExtra(
      MenuNav.menu.fullpath,
      extra: {'tableId': tableId},
    );
  }
}
