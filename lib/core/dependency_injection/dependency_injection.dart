import 'package:alice/alice.dart';
import 'package:get_it/get_it.dart';
import '../env/environment.dart';
import '../service/service_module.dart';
import '../navigation/navigation.dart';

final di = GetIt.instance;

class DependencyInjection {
  final ServiceModule _serviceModule = ServiceModule();
  final NavigationModule _navigationModule = NavigationModule();

  Future<void> injectApp({required Alice alice}) async {
    await _serviceModule(di, baseUrl: '$baseUrl/api/$apiVersion', alice: alice);
    await _navigationModule(di);
  }
}
