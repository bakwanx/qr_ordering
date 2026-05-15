import 'package:flutter/material.dart';

abstract class ScannerNavigationRepository {
  void goToMenuPage(BuildContext context, {required String tableId});
}
