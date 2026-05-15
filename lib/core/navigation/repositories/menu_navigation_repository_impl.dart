import 'package:flutter/material.dart';
import 'package:qr_ordering/core/navigation/nav_list/cart_nav.dart';
import 'package:qr_ordering/core/navigation/utils/util_router.dart';
import 'package:qr_ordering/features/menu/domain/repositories/menu_navigation_repository.dart';

class MenuNavigationRepositoryImpl implements MenuNavigationRepository {
  @override
  void goToCartPage(BuildContext context, {required String tableId}) {
    context.pushExtra(
      CartNav.cart.fullpath,
      extra: {'tableId': tableId},
    );
  }
}
