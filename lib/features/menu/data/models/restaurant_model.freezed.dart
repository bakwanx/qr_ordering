// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RestaurantModel {

 String? get id; String? get name;@JsonKey(name: 'table_id') String? get tableId;
/// Create a copy of RestaurantModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RestaurantModelCopyWith<RestaurantModel> get copyWith => _$RestaurantModelCopyWithImpl<RestaurantModel>(this as RestaurantModel, _$identity);

  /// Serializes this RestaurantModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RestaurantModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.tableId, tableId) || other.tableId == tableId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,tableId);

@override
String toString() {
  return 'RestaurantModel(id: $id, name: $name, tableId: $tableId)';
}


}

/// @nodoc
abstract mixin class $RestaurantModelCopyWith<$Res>  {
  factory $RestaurantModelCopyWith(RestaurantModel value, $Res Function(RestaurantModel) _then) = _$RestaurantModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? name,@JsonKey(name: 'table_id') String? tableId
});




}
/// @nodoc
class _$RestaurantModelCopyWithImpl<$Res>
    implements $RestaurantModelCopyWith<$Res> {
  _$RestaurantModelCopyWithImpl(this._self, this._then);

  final RestaurantModel _self;
  final $Res Function(RestaurantModel) _then;

/// Create a copy of RestaurantModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? tableId = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,tableId: freezed == tableId ? _self.tableId : tableId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RestaurantModel].
extension RestaurantModelPatterns on RestaurantModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RestaurantModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RestaurantModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RestaurantModel value)  $default,){
final _that = this;
switch (_that) {
case _RestaurantModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RestaurantModel value)?  $default,){
final _that = this;
switch (_that) {
case _RestaurantModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name, @JsonKey(name: 'table_id')  String? tableId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RestaurantModel() when $default != null:
return $default(_that.id,_that.name,_that.tableId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name, @JsonKey(name: 'table_id')  String? tableId)  $default,) {final _that = this;
switch (_that) {
case _RestaurantModel():
return $default(_that.id,_that.name,_that.tableId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name, @JsonKey(name: 'table_id')  String? tableId)?  $default,) {final _that = this;
switch (_that) {
case _RestaurantModel() when $default != null:
return $default(_that.id,_that.name,_that.tableId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RestaurantModel implements RestaurantModel {
  const _RestaurantModel({this.id, this.name, @JsonKey(name: 'table_id') this.tableId});
  factory _RestaurantModel.fromJson(Map<String, dynamic> json) => _$RestaurantModelFromJson(json);

@override final  String? id;
@override final  String? name;
@override@JsonKey(name: 'table_id') final  String? tableId;

/// Create a copy of RestaurantModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RestaurantModelCopyWith<_RestaurantModel> get copyWith => __$RestaurantModelCopyWithImpl<_RestaurantModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RestaurantModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestaurantModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.tableId, tableId) || other.tableId == tableId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,tableId);

@override
String toString() {
  return 'RestaurantModel(id: $id, name: $name, tableId: $tableId)';
}


}

/// @nodoc
abstract mixin class _$RestaurantModelCopyWith<$Res> implements $RestaurantModelCopyWith<$Res> {
  factory _$RestaurantModelCopyWith(_RestaurantModel value, $Res Function(_RestaurantModel) _then) = __$RestaurantModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name,@JsonKey(name: 'table_id') String? tableId
});




}
/// @nodoc
class __$RestaurantModelCopyWithImpl<$Res>
    implements _$RestaurantModelCopyWith<$Res> {
  __$RestaurantModelCopyWithImpl(this._self, this._then);

  final _RestaurantModel _self;
  final $Res Function(_RestaurantModel) _then;

/// Create a copy of RestaurantModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? tableId = freezed,}) {
  return _then(_RestaurantModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,tableId: freezed == tableId ? _self.tableId : tableId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
