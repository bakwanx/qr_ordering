import 'package:alice/alice.dart';
import 'package:alice_dio/alice_dio_adapter.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'dio_service.dart';
import 'interceptors.dart';

class ServiceModule {
  Future<void> call(
    GetIt di, {
    required String baseUrl,
    required Alice alice,
  }) async {
    AliceDioAdapter aliceDioAdapter = AliceDioAdapter();
    alice.addAdapter(aliceDioAdapter);
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

      return DioService(
        dioClient: dio,
        interceptors: [LoggingInterceptor(), ErrorInterceptor()],
      );
    });
  }
}
