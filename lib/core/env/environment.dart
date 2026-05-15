import 'env.dart';

enum Environment {
  dev(isDev: true, isProd: false),
  prod(isDev: false, isProd: true);

  final bool isDev;
  final bool isProd;

  const Environment({required this.isDev, required this.isProd});
}

const environment = Environment.dev;

String get baseUrl => Env.baseUrl;
String get apiVersion => Env.apiVersion;
