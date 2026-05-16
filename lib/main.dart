import 'package:alice/alice.dart';
import 'package:alice/model/alice_configuration.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_ordering/app.dart';
import 'package:qr_ordering/core/dependency_injection/dependency_injection.dart';
import 'package:qr_ordering/core/navigation/utils/util_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection().injectApp();
  runApp(const App());
}
