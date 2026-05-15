// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderStatusModel {

 String? get id;@JsonKey(name: 'table_id') String? get tableId; String? get status;@JsonKey(name: 'total_amount') double? get totalAmount;@JsonKey(name: 'created_at') String? get createdAt;
/// Create a copy of OrderStatusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderStatusModelCopyWith<OrderStatusModel> get copyWith => _$OrderStatusModelCopyWithImpl<OrderStatusModel>(this as OrderStatusModel, _$identity);

  /// Serializes this OrderStatusModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderStatusModel&&(identical(other.id, id) || other.id == id)&&(identical(other.tableId, tableId) || other.tableId == tableId)&&(identical(other.status, status) || other.status == status)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tableId,status,totalAmount,createdAt);

@override
String toString() {
  return 'OrderStatusModel(id: $id, tableId: $tableId, status: $status, totalAmount: $totalAmount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $OrderStatusModelCopyWith<$Res>  {
  factory $OrderStatusModelCopyWith(OrderStatusModel value, $Res Function(OrderStatusModel) _then) = _$OrderStatusModelCopyWithImpl;
@useResult
$Res call({
 String? id,@JsonKey(name: 'table_id') String? tableId, String? status,@JsonKey(name: 'total_amount') double? totalAmount,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class _$OrderStatusModelCopyWithImpl<$Res>
    implements $OrderStatusModelCopyWith<$Res> {
  _$OrderStatusModelCopyWithImpl(this._self, this._then);

  final OrderStatusModel _self;
  final $Res Function(OrderStatusModel) _then;

/// Create a copy of OrderStatusModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? tableId = freezed,Object? status = freezed,Object? totalAmount = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,tableId: freezed == tableId ? _self.tableId : tableId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderStatusModel].
extension OrderStatusModelPatterns on OrderStatusModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderStatusModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderStatusModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderStatusModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderStatusModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderStatusModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderStatusModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id, @JsonKey(name: 'table_id')  String? tableId,  String? status, @JsonKey(name: 'total_amount')  double? totalAmount, @JsonKey(name: 'created_at')  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderStatusModel() when $default != null:
return $default(_that.id,_that.tableId,_that.status,_that.totalAmount,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id, @JsonKey(name: 'table_id')  String? tableId,  String? status, @JsonKey(name: 'total_amount')  double? totalAmount, @JsonKey(name: 'created_at')  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _OrderStatusModel():
return $default(_that.id,_that.tableId,_that.status,_that.totalAmount,_that.createdAt);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id, @JsonKey(name: 'table_id')  String? tableId,  String? status, @JsonKey(name: 'total_amount')  double? totalAmount, @JsonKey(name: 'created_at')  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _OrderStatusModel() when $default != null:
return $default(_that.id,_that.tableId,_that.status,_that.totalAmount,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderStatusModel implements OrderStatusModel {
  const _OrderStatusModel({this.id, @JsonKey(name: 'table_id') this.tableId, this.status, @JsonKey(name: 'total_amount') this.totalAmount, @JsonKey(name: 'created_at') this.createdAt});
  factory _OrderStatusModel.fromJson(Map<String, dynamic> json) => _$OrderStatusModelFromJson(json);

@override final  String? id;
@override@JsonKey(name: 'table_id') final  String? tableId;
@override final  String? status;
@override@JsonKey(name: 'total_amount') final  double? totalAmount;
@override@JsonKey(name: 'created_at') final  String? createdAt;

/// Create a copy of OrderStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderStatusModelCopyWith<_OrderStatusModel> get copyWith => __$OrderStatusModelCopyWithImpl<_OrderStatusModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderStatusModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderStatusModel&&(identical(other.id, id) || other.id == id)&&(identical(other.tableId, tableId) || other.tableId == tableId)&&(identical(other.status, status) || other.status == status)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tableId,status,totalAmount,createdAt);

@override
String toString() {
  return 'OrderStatusModel(id: $id, tableId: $tableId, status: $status, totalAmount: $totalAmount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$OrderStatusModelCopyWith<$Res> implements $OrderStatusModelCopyWith<$Res> {
  factory _$OrderStatusModelCopyWith(_OrderStatusModel value, $Res Function(_OrderStatusModel) _then) = __$OrderStatusModelCopyWithImpl;
@override @useResult
$Res call({
 String? id,@JsonKey(name: 'table_id') String? tableId, String? status,@JsonKey(name: 'total_amount') double? totalAmount,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class __$OrderStatusModelCopyWithImpl<$Res>
    implements _$OrderStatusModelCopyWith<$Res> {
  __$OrderStatusModelCopyWithImpl(this._self, this._then);

  final _OrderStatusModel _self;
  final $Res Function(_OrderStatusModel) _then;

/// Create a copy of OrderStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? tableId = freezed,Object? status = freezed,Object? totalAmount = freezed,Object? createdAt = freezed,}) {
  return _then(_OrderStatusModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,tableId: freezed == tableId ? _self.tableId : tableId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
