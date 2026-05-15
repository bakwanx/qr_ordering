import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_status_model.freezed.dart';
part 'order_status_model.g.dart';

@freezed
sealed class OrderStatusModel with _$OrderStatusModel {
  const factory OrderStatusModel({
    String? id,
    @JsonKey(name: 'table_id') String? tableId,
    String? status,
    @JsonKey(name: 'total_amount') double? totalAmount,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _OrderStatusModel;

  factory OrderStatusModel.fromJson(Map<String, dynamic> json) => _$OrderStatusModelFromJson(json);
}
