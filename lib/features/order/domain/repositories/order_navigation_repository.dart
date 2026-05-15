import 'package:flutter/material.dart';

abstract class OrderNavigationRepository {
  void goToOrderTrackingPage(BuildContext context, {required String tableId, required String orderId});
  void goToMenuPage(BuildContext context, {required String tableId});
}
