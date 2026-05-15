import 'package:freezed_annotation/freezed_annotation.dart';

part 'table_status_model.freezed.dart';
part 'table_status_model.g.dart';

@freezed
sealed class TableStatusModel with _$TableStatusModel {
  const factory TableStatusModel({
    @JsonKey(name: 'table_id') String? tableId,
    String? status,
    @JsonKey(name: 'restaurant_id') String? restaurantId,
    @JsonKey(name: 'restaurant_name') String? restaurantName,
  }) = _TableStatusModel;

  factory TableStatusModel.fromJson(Map<String, dynamic> json) =>
      _$TableStatusModelFromJson(json);
}
