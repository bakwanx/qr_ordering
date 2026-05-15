import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:qr_ordering/core/error/failure.dart';
import 'package:qr_ordering/core/service/dio_service.dart';
import 'package:qr_ordering/features/order/data/datasources/order_remote_ds.dart';
import 'package:qr_ordering/features/order/data/mapper/order_mapper.dart';
import 'package:qr_ordering/features/order/domain/entities/create_order_request_entity.dart';
import 'package:qr_ordering/features/order/domain/entities/order_status_entity.dart';
import 'package:qr_ordering/features/order/domain/repositories/order_repository.dart';

class OrderRepositoryImpl implements OrderRepository {
  final OrderRemoteDs _remoteDs;

  OrderRepositoryImpl(this._remoteDs);

  @override
  Future<Either<Failure, OrderStatusEntity>> submitOrder(CreateOrderRequestEntity request) async {
    try {
      final model = await _remoteDs.submitOrder(request.toModel());
      return Right(model.toEntity());
    } on DioException catch (e) {
      return Left(dioExceptionToFailure(e));
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, OrderStatusEntity>> getOrderStatus(String orderId) async {
    try {
      final model = await _remoteDs.getOrderStatus(orderId);
      return Right(model.toEntity());
    } on DioException catch (e) {
      return Left(dioExceptionToFailure(e));
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }
}
