import 'package:alice/alice.dart';
import 'package:alice/model/alice_configuration.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_ordering/app.dart';
import 'package:qr_ordering/core/dependency_injection/dependency_injection.dart';
import 'package:qr_ordering/core/navigation/utils/util_router.dart';

final alice = Alice(
  configuration: AliceConfiguration(
    showNotification: kDebugMode,
    showInspectorOnShake: kDebugMode,
    navigatorKey: rootNavigatorKey,
    notificationIcon: '@drawable/ic_notif',
  ),
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection().injectApp(alice: alice);
  runApp(const App());
}
