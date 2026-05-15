import 'package:dartz/dartz.dart';
import 'package:qr_ordering/core/error/failure.dart';
import 'package:qr_ordering/features/order/domain/entities/create_order_request_entity.dart';
import 'package:qr_ordering/features/order/domain/entities/order_status_entity.dart';
import 'package:qr_ordering/features/order/domain/repositories/order_repository.dart';

class SubmitOrderUseCase {
  final OrderRepository _repository;

  SubmitOrderUseCase(this._repository);

  Future<Either<Failure, OrderStatusEntity>> call(CreateOrderRequestEntity request) {
    return _repository.submitOrder(request);
  }
}
