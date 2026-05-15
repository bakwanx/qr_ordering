import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_item_entity.freezed.dart';

@freezed
sealed class OrderItemEntity with _$OrderItemEntity {
  const factory OrderItemEntity({
    required int menuItemId,
    required int quantity,
    @Default([]) List<int> customizationOptionIds,
  }) = _OrderItemEntity;
}
