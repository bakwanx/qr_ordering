import 'package:dartz/dartz.dart';
import 'package:qr_ordering/core/error/failure.dart';
import 'package:qr_ordering/features/order/domain/entities/order_status_entity.dart';
import 'package:qr_ordering/features/order/domain/repositories/order_repository.dart';

class GetOrderStatusUseCase {
  final OrderRepository _repository;

  GetOrderStatusUseCase(this._repository);

  Future<Either<Failure, OrderStatusEntity>> call(String orderId) {
    return _repository.getOrderStatus(orderId);
  }
}
