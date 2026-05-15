// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customization_selection_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CustomizationSelectionEntity {

 int get optionId; String get optionName; double get priceModifier; int get quantity;
/// Create a copy of CustomizationSelectionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomizationSelectionEntityCopyWith<CustomizationSelectionEntity> get copyWith => _$CustomizationSelectionEntityCopyWithImpl<CustomizationSelectionEntity>(this as CustomizationSelectionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomizationSelectionEntity&&(identical(other.optionId, optionId) || other.optionId == optionId)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.priceModifier, priceModifier) || other.priceModifier == priceModifier)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,optionId,optionName,priceModifier,quantity);

@override
String toString() {
  return 'CustomizationSelectionEntity(optionId: $optionId, optionName: $optionName, priceModifier: $priceModifier, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $CustomizationSelectionEntityCopyWith<$Res>  {
  factory $CustomizationSelectionEntityCopyWith(CustomizationSelectionEntity value, $Res Function(CustomizationSelectionEntity) _then) = _$CustomizationSelectionEntityCopyWithImpl;
@useResult
$Res call({
 int optionId, String optionName, double priceModifier, int quantity
});




}
/// @nodoc
class _$CustomizationSelectionEntityCopyWithImpl<$Res>
    implements $CustomizationSelectionEntityCopyWith<$Res> {
  _$CustomizationSelectionEntityCopyWithImpl(this._self, this._then);

  final CustomizationSelectionEntity _self;
  final $Res Function(CustomizationSelectionEntity) _then;

/// Create a copy of CustomizationSelectionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? optionId = null,Object? optionName = null,Object? priceModifier = null,Object? quantity = null,}) {
  return _then(_self.copyWith(
optionId: null == optionId ? _self.optionId : optionId // ignore: cast_nullable_to_non_nullable
as int,optionName: null == optionName ? _self.optionName : optionName // ignore: cast_nullable_to_non_nullable
as String,priceModifier: null == priceModifier ? _self.priceModifier : priceModifier // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomizationSelectionEntity].
extension CustomizationSelectionEntityPatterns on CustomizationSelectionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomizationSelectionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomizationSelectionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomizationSelectionEntity value)  $default,){
final _that = this;
switch (_that) {
case _CustomizationSelectionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomizationSelectionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CustomizationSelectionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int optionId,  String optionName,  double priceModifier,  int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomizationSelectionEntity() when $default != null:
return $default(_that.optionId,_that.optionName,_that.priceModifier,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int optionId,  String optionName,  double priceModifier,  int quantity)  $default,) {final _that = this;
switch (_that) {
case _CustomizationSelectionEntity():
return $default(_that.optionId,_that.optionName,_that.priceModifier,_that.quantity);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int optionId,  String optionName,  double priceModifier,  int quantity)?  $default,) {final _that = this;
switch (_that) {
case _CustomizationSelectionEntity() when $default != null:
return $default(_that.optionId,_that.optionName,_that.priceModifier,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc


class _CustomizationSelectionEntity implements CustomizationSelectionEntity {
  const _CustomizationSelectionEntity({required this.optionId, required this.optionName, required this.priceModifier, required this.quantity});
  

@override final  int optionId;
@override final  String optionName;
@override final  double priceModifier;
@override final  int quantity;

/// Create a copy of CustomizationSelectionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomizationSelectionEntityCopyWith<_CustomizationSelectionEntity> get copyWith => __$CustomizationSelectionEntityCopyWithImpl<_CustomizationSelectionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomizationSelectionEntity&&(identical(other.optionId, optionId) || other.optionId == optionId)&&(identical(other.optionName, optionName) || other.optionName == optionName)&&(identical(other.priceModifier, priceModifier) || other.priceModifier == priceModifier)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,optionId,optionName,priceModifier,quantity);

@override
String toString() {
  return 'CustomizationSelectionEntity(optionId: $optionId, optionName: $optionName, priceModifier: $priceModifier, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$CustomizationSelectionEntityCopyWith<$Res> implements $CustomizationSelectionEntityCopyWith<$Res> {
  factory _$CustomizationSelectionEntityCopyWith(_CustomizationSelectionEntity value, $Res Function(_CustomizationSelectionEntity) _then) = __$CustomizationSelectionEntityCopyWithImpl;
@override @useResult
$Res call({
 int optionId, String optionName, double priceModifier, int quantity
});




}
/// @nodoc
class __$CustomizationSelectionEntityCopyWithImpl<$Res>
    implements _$CustomizationSelectionEntityCopyWith<$Res> {
  __$CustomizationSelectionEntityCopyWithImpl(this._self, this._then);

  final _CustomizationSelectionEntity _self;
  final $Res Function(_CustomizationSelectionEntity) _then;

/// Create a copy of CustomizationSelectionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? optionId = null,Object? optionName = null,Object? priceModifier = null,Object? quantity = null,}) {
  return _then(_CustomizationSelectionEntity(
optionId: null == optionId ? _self.optionId : optionId // ignore: cast_nullable_to_non_nullable
as int,optionName: null == optionName ? _self.optionName : optionName // ignore: cast_nullable_to_non_nullable
as String,priceModifier: null == priceModifier ? _self.priceModifier : priceModifier // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
