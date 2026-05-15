// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_status_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderStatusEntity {

 String get id; String get tableId; String get status; double get totalAmount; DateTime get createdAt;
/// Create a copy of OrderStatusEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderStatusEntityCopyWith<OrderStatusEntity> get copyWith => _$OrderStatusEntityCopyWithImpl<OrderStatusEntity>(this as OrderStatusEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderStatusEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.tableId, tableId) || other.tableId == tableId)&&(identical(other.status, status) || other.status == status)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,tableId,status,totalAmount,createdAt);

@override
String toString() {
  return 'OrderStatusEntity(id: $id, tableId: $tableId, status: $status, totalAmount: $totalAmount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $OrderStatusEntityCopyWith<$Res>  {
  factory $OrderStatusEntityCopyWith(OrderStatusEntity value, $Res Function(OrderStatusEntity) _then) = _$OrderStatusEntityCopyWithImpl;
@useResult
$Res call({
 String id, String tableId, String status, double totalAmount, DateTime createdAt
});




}
/// @nodoc
class _$OrderStatusEntityCopyWithImpl<$Res>
    implements $OrderStatusEntityCopyWith<$Res> {
  _$OrderStatusEntityCopyWithImpl(this._self, this._then);

  final OrderStatusEntity _self;
  final $Res Function(OrderStatusEntity) _then;

/// Create a copy of OrderStatusEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? tableId = null,Object? status = null,Object? totalAmount = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,tableId: null == tableId ? _self.tableId : tableId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderStatusEntity].
extension OrderStatusEntityPatterns on OrderStatusEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderStatusEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderStatusEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderStatusEntity value)  $default,){
final _that = this;
switch (_that) {
case _OrderStatusEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderStatusEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OrderStatusEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String tableId,  String status,  double totalAmount,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderStatusEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String tableId,  String status,  double totalAmount,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _OrderStatusEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String tableId,  String status,  double totalAmount,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _OrderStatusEntity() when $default != null:
return $default(_that.id,_that.tableId,_that.status,_that.totalAmount,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _OrderStatusEntity implements OrderStatusEntity {
  const _OrderStatusEntity({required this.id, required this.tableId, required this.status, required this.totalAmount, required this.createdAt});
  

@override final  String id;
@override final  String tableId;
@override final  String status;
@override final  double totalAmount;
@override final  DateTime createdAt;

/// Create a copy of OrderStatusEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderStatusEntityCopyWith<_OrderStatusEntity> get copyWith => __$OrderStatusEntityCopyWithImpl<_OrderStatusEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderStatusEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.tableId, tableId) || other.tableId == tableId)&&(identical(other.status, status) || other.status == status)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,tableId,status,totalAmount,createdAt);

@override
String toString() {
  return 'OrderStatusEntity(id: $id, tableId: $tableId, status: $status, totalAmount: $totalAmount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$OrderStatusEntityCopyWith<$Res> implements $OrderStatusEntityCopyWith<$Res> {
  factory _$OrderStatusEntityCopyWith(_OrderStatusEntity value, $Res Function(_OrderStatusEntity) _then) = __$OrderStatusEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String tableId, String status, double totalAmount, DateTime createdAt
});




}
/// @nodoc
class __$OrderStatusEntityCopyWithImpl<$Res>
    implements _$OrderStatusEntityCopyWith<$Res> {
  __$OrderStatusEntityCopyWithImpl(this._self, this._then);

  final _OrderStatusEntity _self;
  final $Res Function(_OrderStatusEntity) _then;

/// Create a copy of OrderStatusEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? tableId = null,Object? status = null,Object? totalAmount = null,Object? createdAt = null,}) {
  return _then(_OrderStatusEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,tableId: null == tableId ? _self.tableId : tableId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
