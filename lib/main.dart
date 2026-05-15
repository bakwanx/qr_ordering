import 'package:flutter/material.dart';
import 'package:qr_ordering/app.dart';
import 'package:qr_ordering/core/dependency_injection/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection().injectApp();
  runApp(const App());
}
