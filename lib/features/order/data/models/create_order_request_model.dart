import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_ordering/features/order/data/models/order_item_model.dart';

part 'create_order_request_model.freezed.dart';
part 'create_order_request_model.g.dart';

@freezed
sealed class CreateOrderRequestModel with _$CreateOrderRequestModel {
  const factory CreateOrderRequestModel({
    @JsonKey(name: 'table_id') String? tableId,
    @Default([]) List<OrderItemModel> items,
    @JsonKey(name: 'customer_note') String? customerNote,
  }) = _CreateOrderRequestModel;

  factory CreateOrderRequestModel.fromJson(Map<String, dynamic> json) => _$CreateOrderRequestModelFromJson(json);
}
