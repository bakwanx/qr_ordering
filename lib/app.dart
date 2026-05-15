import 'package:flutter/material.dart';
import 'package:qr_ordering/core/navigation/routes/main_routes.dart';
import 'package:qr_ordering/core/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'QR Ordering',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      routerConfig: MainRoutes.router,
    );
  }
}
