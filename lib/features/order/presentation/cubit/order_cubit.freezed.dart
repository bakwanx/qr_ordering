// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderState {

 QrOrderingStatus get submitStatus; QrOrderingStatus get trackStatus; String? get orderId; OrderStatusEntity? get orderStatus; Failure? get failure;
/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderStateCopyWith<OrderState> get copyWith => _$OrderStateCopyWithImpl<OrderState>(this as OrderState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderState&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.trackStatus, trackStatus) || other.trackStatus == trackStatus)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,submitStatus,trackStatus,orderId,orderStatus,failure);

@override
String toString() {
  return 'OrderState(submitStatus: $submitStatus, trackStatus: $trackStatus, orderId: $orderId, orderStatus: $orderStatus, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $OrderStateCopyWith<$Res>  {
  factory $OrderStateCopyWith(OrderState value, $Res Function(OrderState) _then) = _$OrderStateCopyWithImpl;
@useResult
$Res call({
 QrOrderingStatus submitStatus, QrOrderingStatus trackStatus, String? orderId, OrderStatusEntity? orderStatus, Failure? failure
});


$OrderStatusEntityCopyWith<$Res>? get orderStatus;

}
/// @nodoc
class _$OrderStateCopyWithImpl<$Res>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._self, this._then);

  final OrderState _self;
  final $Res Function(OrderState) _then;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? submitStatus = null,Object? trackStatus = null,Object? orderId = freezed,Object? orderStatus = freezed,Object? failure = freezed,}) {
  return _then(_self.copyWith(
submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as QrOrderingStatus,trackStatus: null == trackStatus ? _self.trackStatus : trackStatus // ignore: cast_nullable_to_non_nullable
as QrOrderingStatus,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String?,orderStatus: freezed == orderStatus ? _self.orderStatus : orderStatus // ignore: cast_nullable_to_non_nullable
as OrderStatusEntity?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}
/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderStatusEntityCopyWith<$Res>? get orderStatus {
    if (_self.orderStatus == null) {
    return null;
  }

  return $OrderStatusEntityCopyWith<$Res>(_self.orderStatus!, (value) {
    return _then(_self.copyWith(orderStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderState].
extension OrderStatePatterns on OrderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderState value)  $default,){
final _that = this;
switch (_that) {
case _OrderState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderState value)?  $default,){
final _that = this;
switch (_that) {
case _OrderState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( QrOrderingStatus submitStatus,  QrOrderingStatus trackStatus,  String? orderId,  OrderStatusEntity? orderStatus,  Failure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderState() when $default != null:
return $default(_that.submitStatus,_that.trackStatus,_that.orderId,_that.orderStatus,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( QrOrderingStatus submitStatus,  QrOrderingStatus trackStatus,  String? orderId,  OrderStatusEntity? orderStatus,  Failure? failure)  $default,) {final _that = this;
switch (_that) {
case _OrderState():
return $default(_that.submitStatus,_that.trackStatus,_that.orderId,_that.orderStatus,_that.failure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( QrOrderingStatus submitStatus,  QrOrderingStatus trackStatus,  String? orderId,  OrderStatusEntity? orderStatus,  Failure? failure)?  $default,) {final _that = this;
switch (_that) {
case _OrderState() when $default != null:
return $default(_that.submitStatus,_that.trackStatus,_that.orderId,_that.orderStatus,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _OrderState implements OrderState {
  const _OrderState({this.submitStatus = QrOrderingStatus.pure, this.trackStatus = QrOrderingStatus.pure, this.orderId, this.orderStatus, this.failure});
  

@override@JsonKey() final  QrOrderingStatus submitStatus;
@override@JsonKey() final  QrOrderingStatus trackStatus;
@override final  String? orderId;
@override final  OrderStatusEntity? orderStatus;
@override final  Failure? failure;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderStateCopyWith<_OrderState> get copyWith => __$OrderStateCopyWithImpl<_OrderState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderState&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.trackStatus, trackStatus) || other.trackStatus == trackStatus)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,submitStatus,trackStatus,orderId,orderStatus,failure);

@override
String toString() {
  return 'OrderState(submitStatus: $submitStatus, trackStatus: $trackStatus, orderId: $orderId, orderStatus: $orderStatus, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$OrderStateCopyWith<$Res> implements $OrderStateCopyWith<$Res> {
  factory _$OrderStateCopyWith(_OrderState value, $Res Function(_OrderState) _then) = __$OrderStateCopyWithImpl;
@override @useResult
$Res call({
 QrOrderingStatus submitStatus, QrOrderingStatus trackStatus, String? orderId, OrderStatusEntity? orderStatus, Failure? failure
});


@override $OrderStatusEntityCopyWith<$Res>? get orderStatus;

}
/// @nodoc
class __$OrderStateCopyWithImpl<$Res>
    implements _$OrderStateCopyWith<$Res> {
  __$OrderStateCopyWithImpl(this._self, this._then);

  final _OrderState _self;
  final $Res Function(_OrderState) _then;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? submitStatus = null,Object? trackStatus = null,Object? orderId = freezed,Object? orderStatus = freezed,Object? failure = freezed,}) {
  return _then(_OrderState(
submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as QrOrderingStatus,trackStatus: null == trackStatus ? _self.trackStatus : trackStatus // ignore: cast_nullable_to_non_nullable
as QrOrderingStatus,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String?,orderStatus: freezed == orderStatus ? _self.orderStatus : orderStatus // ignore: cast_nullable_to_non_nullable
as OrderStatusEntity?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderStatusEntityCopyWith<$Res>? get orderStatus {
    if (_self.orderStatus == null) {
    return null;
  }

  return $OrderStatusEntityCopyWith<$Res>(_self.orderStatus!, (value) {
    return _then(_self.copyWith(orderStatus: value));
  });
}
}

// dart format on
