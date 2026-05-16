import 'package:freezed_annotation/freezed_annotation.dart';

part 'table_status_model.freezed.dart';
part 'table_status_model.g.dart';

@freezed
sealed class TableStatusModel with _$TableStatusModel {
  const factory TableStatusModel({
    @JsonKey(name: 'id') String? tableId,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'restaurant_id') String? restaurantId,
  }) = _TableStatusModel;

  factory TableStatusModel.fromJson(Map<String, dynamic> json) =>
      _$TableStatusModelFromJson(json);
}
