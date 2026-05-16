import 'package:freezed_annotation/freezed_annotation.dart';

part 'table_status_entity.freezed.dart';

@freezed
sealed class TableStatusEntity with _$TableStatusEntity {
  const factory TableStatusEntity({
    required String tableId,
    required String status,
    String? restaurantId,
  }) = _TableStatusEntity;
}
