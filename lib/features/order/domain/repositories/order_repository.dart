import 'package:dartz/dartz.dart';
import 'package:qr_ordering/core/error/failure.dart';
import 'package:qr_ordering/features/order/domain/entities/create_order_request_entity.dart';
import 'package:qr_ordering/features/order/domain/entities/order_status_entity.dart';

abstract class OrderRepository {
  Future<Either<Failure, OrderStatusEntity>> submitOrder(CreateOrderRequestEntity request);
  Future<Either<Failure, OrderStatusEntity>> getOrderStatus(String orderId);
}
