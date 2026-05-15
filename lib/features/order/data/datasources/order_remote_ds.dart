import 'package:qr_ordering/core/service/dio_service.dart';
import 'package:qr_ordering/features/order/data/models/create_order_request_model.dart';
import 'package:qr_ordering/features/order/data/models/order_status_model.dart';

abstract class OrderRemoteDs {
  Future<OrderStatusModel> submitOrder(CreateOrderRequestModel request);
  Future<OrderStatusModel> getOrderStatus(String orderId);
}

class OrderRemoteDsImpl implements OrderRemoteDs {
  final DioService _dioService;

  OrderRemoteDsImpl(this._dioService);

  @override
  Future<OrderStatusModel> submitOrder(CreateOrderRequestModel request) async {
    final response = await _dioService.post<Map<String, dynamic>>(
      '/orders',
      data: request.toJson(),
    );
    return OrderStatusModel.fromJson(response.data!);
  }

  @override
  Future<OrderStatusModel> getOrderStatus(String orderId) async {
    final response = await _dioService.get<Map<String, dynamic>>(
      '/orders/$orderId',
    );
    return OrderStatusModel.fromJson(response.data!);
  }
}
