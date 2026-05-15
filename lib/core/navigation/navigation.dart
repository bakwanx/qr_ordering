import 'package:get_it/get_it.dart';
import 'package:qr_ordering/features/scanner/scanner_module.dart';

class NavigationModule {
  Future<void> call(GetIt di) async {
    await ScannerModule()(di);
  }
}
