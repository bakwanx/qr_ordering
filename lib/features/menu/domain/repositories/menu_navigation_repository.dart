import 'package:flutter/material.dart';

abstract class MenuNavigationRepository {
  void goToCartPage(BuildContext context, {required String tableId});
}
