import 'package:flutter/material.dart';

abstract class CartNavigationRepository {
  void goToOrderConfirmationPage(
    BuildContext context, {
    required String tableId,
    required String orderId,
  });
}
