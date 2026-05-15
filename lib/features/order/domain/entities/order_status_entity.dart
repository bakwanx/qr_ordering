import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_status_entity.freezed.dart';

@freezed
sealed class OrderStatusEntity with _$OrderStatusEntity {
  const factory OrderStatusEntity({
    required String id,
    required String tableId,
    required String status,
    required double totalAmount,
    required DateTime createdAt,
  }) = _OrderStatusEntity;
}
