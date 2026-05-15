import 'package:get_it/get_it.dart';
import 'package:qr_ordering/features/cart/cart_module.dart';
import 'package:qr_ordering/features/menu/menu_module.dart';
import 'package:qr_ordering/features/order/order_module.dart';
import 'package:qr_ordering/features/scanner/scanner_module.dart';

class NavigationModule {
  Future<void> call(GetIt di) async {
    await ScannerModule()(di);
    await MenuModule()(di);
    await CartModule()(di);
    await OrderModule()(di);
  }
}
