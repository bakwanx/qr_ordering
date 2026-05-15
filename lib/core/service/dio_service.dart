import 'package:dio/dio.dart';
import '../error/failure.dart';

class DioService {
  final Dio _dioClient;

  DioService({
    required Dio dioClient,
    Iterable<Interceptor> interceptors = const [],
  }) : _dioClient = dioClient {
    _dioClient.interceptors.addAll(interceptors);
  }

  Dio get client => _dioClient;

  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dioClient.get<T>(
        path,
        queryParameters: queryParameters,
        options: options,
      );
    } on DioException {
      rethrow;
    }
  }

  Future<Response<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dioClient.post<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
    } on DioException {
      rethrow;
    }
  }
}

Failure dioExceptionToFailure(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
    case DioExceptionType.receiveTimeout:
    case DioExceptionType.sendTimeout:
    case DioExceptionType.connectionError:
      return NetworkFailure(message: 'Connection error. Please check your internet connection.');
    case DioExceptionType.badResponse:
      final statusCode = e.response?.statusCode;
      final message = _extractMessage(e.response?.data) ?? 'Server error occurred.';
      return ServerFailure(message: message, statusCode: statusCode);
    default:
      return UnknownFailure(message: e.message ?? 'An unexpected error occurred.');
  }
}

String? _extractMessage(dynamic data) {
  if (data is Map<String, dynamic>) {
    return data['message']?.toString();
  }
  return null;
}
