import 'package:flutter/material.dart';
import 'package:qr_ordering/core/navigation/nav_list/order_nav.dart';
import 'package:qr_ordering/core/navigation/utils/util_router.dart';
import 'package:qr_ordering/features/cart/domain/repositories/cart_navigation_repository.dart';

class CartNavigationRepositoryImpl implements CartNavigationRepository {
  @override
  void goToOrderConfirmationPage(
    BuildContext context, {
    required String tableId,
    required String orderId,
  }) {
    context.pushExtra(
      OrderNav.confirmation.fullpath,
      extra: {'tableId': tableId, 'orderId': orderId},
    );
  }
}
