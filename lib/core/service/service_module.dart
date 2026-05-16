import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:qr_ordering/core/service/logging_interceptor.dart';
import 'dio_service.dart';

class ServiceModule {
  Future<void> call(GetIt di, {required String baseUrl}) async {
    di.registerLazySingleton<DioService>(() {
      final dio = Dio(
        BaseOptions(
          baseUrl: baseUrl,
          contentType: 'application/json',
          connectTimeout: const Duration(seconds: 30),
          sendTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
        ),
      );

      return DioService(dioClient: dio, interceptors: [LoggingInterceptor()]);
    });
  }
}
