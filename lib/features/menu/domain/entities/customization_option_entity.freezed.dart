// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customization_option_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CustomizationOptionEntity {

 int get id; String get name; double get priceModifier;
/// Create a copy of CustomizationOptionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomizationOptionEntityCopyWith<CustomizationOptionEntity> get copyWith => _$CustomizationOptionEntityCopyWithImpl<CustomizationOptionEntity>(this as CustomizationOptionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomizationOptionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.priceModifier, priceModifier) || other.priceModifier == priceModifier));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,priceModifier);

@override
String toString() {
  return 'CustomizationOptionEntity(id: $id, name: $name, priceModifier: $priceModifier)';
}


}

/// @nodoc
abstract mixin class $CustomizationOptionEntityCopyWith<$Res>  {
  factory $CustomizationOptionEntityCopyWith(CustomizationOptionEntity value, $Res Function(CustomizationOptionEntity) _then) = _$CustomizationOptionEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, double priceModifier
});




}
/// @nodoc
class _$CustomizationOptionEntityCopyWithImpl<$Res>
    implements $CustomizationOptionEntityCopyWith<$Res> {
  _$CustomizationOptionEntityCopyWithImpl(this._self, this._then);

  final CustomizationOptionEntity _self;
  final $Res Function(CustomizationOptionEntity) _then;

/// Create a copy of CustomizationOptionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? priceModifier = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,priceModifier: null == priceModifier ? _self.priceModifier : priceModifier // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomizationOptionEntity].
extension CustomizationOptionEntityPatterns on CustomizationOptionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomizationOptionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomizationOptionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomizationOptionEntity value)  $default,){
final _that = this;
switch (_that) {
case _CustomizationOptionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomizationOptionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CustomizationOptionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  double priceModifier)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomizationOptionEntity() when $default != null:
return $default(_that.id,_that.name,_that.priceModifier);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  double priceModifier)  $default,) {final _that = this;
switch (_that) {
case _CustomizationOptionEntity():
return $default(_that.id,_that.name,_that.priceModifier);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  double priceModifier)?  $default,) {final _that = this;
switch (_that) {
case _CustomizationOptionEntity() when $default != null:
return $default(_that.id,_that.name,_that.priceModifier);case _:
  return null;

}
}

}

/// @nodoc


class _CustomizationOptionEntity implements CustomizationOptionEntity {
  const _CustomizationOptionEntity({required this.id, required this.name, required this.priceModifier});
  

@override final  int id;
@override final  String name;
@override final  double priceModifier;

/// Create a copy of CustomizationOptionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomizationOptionEntityCopyWith<_CustomizationOptionEntity> get copyWith => __$CustomizationOptionEntityCopyWithImpl<_CustomizationOptionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomizationOptionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.priceModifier, priceModifier) || other.priceModifier == priceModifier));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,priceModifier);

@override
String toString() {
  return 'CustomizationOptionEntity(id: $id, name: $name, priceModifier: $priceModifier)';
}


}

/// @nodoc
abstract mixin class _$CustomizationOptionEntityCopyWith<$Res> implements $CustomizationOptionEntityCopyWith<$Res> {
  factory _$CustomizationOptionEntityCopyWith(_CustomizationOptionEntity value, $Res Function(_CustomizationOptionEntity) _then) = __$CustomizationOptionEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, double priceModifier
});




}
/// @nodoc
class __$CustomizationOptionEntityCopyWithImpl<$Res>
    implements _$CustomizationOptionEntityCopyWith<$Res> {
  __$CustomizationOptionEntityCopyWithImpl(this._self, this._then);

  final _CustomizationOptionEntity _self;
  final $Res Function(_CustomizationOptionEntity) _then;

/// Create a copy of CustomizationOptionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? priceModifier = null,}) {
  return _then(_CustomizationOptionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,priceModifier: null == priceModifier ? _self.priceModifier : priceModifier // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
