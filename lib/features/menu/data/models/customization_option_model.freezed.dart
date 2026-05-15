// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customization_option_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomizationOptionModel {

 int? get id; String? get name;@JsonKey(name: 'price_modifier') double? get priceModifier;
/// Create a copy of CustomizationOptionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomizationOptionModelCopyWith<CustomizationOptionModel> get copyWith => _$CustomizationOptionModelCopyWithImpl<CustomizationOptionModel>(this as CustomizationOptionModel, _$identity);

  /// Serializes this CustomizationOptionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomizationOptionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.priceModifier, priceModifier) || other.priceModifier == priceModifier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,priceModifier);

@override
String toString() {
  return 'CustomizationOptionModel(id: $id, name: $name, priceModifier: $priceModifier)';
}


}

/// @nodoc
abstract mixin class $CustomizationOptionModelCopyWith<$Res>  {
  factory $CustomizationOptionModelCopyWith(CustomizationOptionModel value, $Res Function(CustomizationOptionModel) _then) = _$CustomizationOptionModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? name,@JsonKey(name: 'price_modifier') double? priceModifier
});




}
/// @nodoc
class _$CustomizationOptionModelCopyWithImpl<$Res>
    implements $CustomizationOptionModelCopyWith<$Res> {
  _$CustomizationOptionModelCopyWithImpl(this._self, this._then);

  final CustomizationOptionModel _self;
  final $Res Function(CustomizationOptionModel) _then;

/// Create a copy of CustomizationOptionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? priceModifier = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,priceModifier: freezed == priceModifier ? _self.priceModifier : priceModifier // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomizationOptionModel].
extension CustomizationOptionModelPatterns on CustomizationOptionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomizationOptionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomizationOptionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomizationOptionModel value)  $default,){
final _that = this;
switch (_that) {
case _CustomizationOptionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomizationOptionModel value)?  $default,){
final _that = this;
switch (_that) {
case _CustomizationOptionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name, @JsonKey(name: 'price_modifier')  double? priceModifier)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomizationOptionModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name, @JsonKey(name: 'price_modifier')  double? priceModifier)  $default,) {final _that = this;
switch (_that) {
case _CustomizationOptionModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name, @JsonKey(name: 'price_modifier')  double? priceModifier)?  $default,) {final _that = this;
switch (_that) {
case _CustomizationOptionModel() when $default != null:
return $default(_that.id,_that.name,_that.priceModifier);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomizationOptionModel implements CustomizationOptionModel {
  const _CustomizationOptionModel({this.id, this.name, @JsonKey(name: 'price_modifier') this.priceModifier});
  factory _CustomizationOptionModel.fromJson(Map<String, dynamic> json) => _$CustomizationOptionModelFromJson(json);

@override final  int? id;
@override final  String? name;
@override@JsonKey(name: 'price_modifier') final  double? priceModifier;

/// Create a copy of CustomizationOptionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomizationOptionModelCopyWith<_CustomizationOptionModel> get copyWith => __$CustomizationOptionModelCopyWithImpl<_CustomizationOptionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomizationOptionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomizationOptionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.priceModifier, priceModifier) || other.priceModifier == priceModifier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,priceModifier);

@override
String toString() {
  return 'CustomizationOptionModel(id: $id, name: $name, priceModifier: $priceModifier)';
}


}

/// @nodoc
abstract mixin class _$CustomizationOptionModelCopyWith<$Res> implements $CustomizationOptionModelCopyWith<$Res> {
  factory _$CustomizationOptionModelCopyWith(_CustomizationOptionModel value, $Res Function(_CustomizationOptionModel) _then) = __$CustomizationOptionModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name,@JsonKey(name: 'price_modifier') double? priceModifier
});




}
/// @nodoc
class __$CustomizationOptionModelCopyWithImpl<$Res>
    implements _$CustomizationOptionModelCopyWith<$Res> {
  __$CustomizationOptionModelCopyWithImpl(this._self, this._then);

  final _CustomizationOptionModel _self;
  final $Res Function(_CustomizationOptionModel) _then;

/// Create a copy of CustomizationOptionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? priceModifier = freezed,}) {
  return _then(_CustomizationOptionModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,priceModifier: freezed == priceModifier ? _self.priceModifier : priceModifier // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
