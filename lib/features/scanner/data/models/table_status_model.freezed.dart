// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TableStatusModel {

@JsonKey(name: 'id') String? get tableId;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'restaurant_id') String? get restaurantId;
/// Create a copy of TableStatusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TableStatusModelCopyWith<TableStatusModel> get copyWith => _$TableStatusModelCopyWithImpl<TableStatusModel>(this as TableStatusModel, _$identity);

  /// Serializes this TableStatusModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TableStatusModel&&(identical(other.tableId, tableId) || other.tableId == tableId)&&(identical(other.status, status) || other.status == status)&&(identical(other.restaurantId, restaurantId) || other.restaurantId == restaurantId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tableId,status,restaurantId);

@override
String toString() {
  return 'TableStatusModel(tableId: $tableId, status: $status, restaurantId: $restaurantId)';
}


}

/// @nodoc
abstract mixin class $TableStatusModelCopyWith<$Res>  {
  factory $TableStatusModelCopyWith(TableStatusModel value, $Res Function(TableStatusModel) _then) = _$TableStatusModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? tableId,@JsonKey(name: 'status') String? status,@JsonKey(name: 'restaurant_id') String? restaurantId
});




}
/// @nodoc
class _$TableStatusModelCopyWithImpl<$Res>
    implements $TableStatusModelCopyWith<$Res> {
  _$TableStatusModelCopyWithImpl(this._self, this._then);

  final TableStatusModel _self;
  final $Res Function(TableStatusModel) _then;

/// Create a copy of TableStatusModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tableId = freezed,Object? status = freezed,Object? restaurantId = freezed,}) {
  return _then(_self.copyWith(
tableId: freezed == tableId ? _self.tableId : tableId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,restaurantId: freezed == restaurantId ? _self.restaurantId : restaurantId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TableStatusModel].
extension TableStatusModelPatterns on TableStatusModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TableStatusModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TableStatusModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TableStatusModel value)  $default,){
final _that = this;
switch (_that) {
case _TableStatusModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TableStatusModel value)?  $default,){
final _that = this;
switch (_that) {
case _TableStatusModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? tableId, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'restaurant_id')  String? restaurantId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TableStatusModel() when $default != null:
return $default(_that.tableId,_that.status,_that.restaurantId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? tableId, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'restaurant_id')  String? restaurantId)  $default,) {final _that = this;
switch (_that) {
case _TableStatusModel():
return $default(_that.tableId,_that.status,_that.restaurantId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String? tableId, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'restaurant_id')  String? restaurantId)?  $default,) {final _that = this;
switch (_that) {
case _TableStatusModel() when $default != null:
return $default(_that.tableId,_that.status,_that.restaurantId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TableStatusModel implements TableStatusModel {
  const _TableStatusModel({@JsonKey(name: 'id') this.tableId, @JsonKey(name: 'status') this.status, @JsonKey(name: 'restaurant_id') this.restaurantId});
  factory _TableStatusModel.fromJson(Map<String, dynamic> json) => _$TableStatusModelFromJson(json);

@override@JsonKey(name: 'id') final  String? tableId;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'restaurant_id') final  String? restaurantId;

/// Create a copy of TableStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TableStatusModelCopyWith<_TableStatusModel> get copyWith => __$TableStatusModelCopyWithImpl<_TableStatusModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TableStatusModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TableStatusModel&&(identical(other.tableId, tableId) || other.tableId == tableId)&&(identical(other.status, status) || other.status == status)&&(identical(other.restaurantId, restaurantId) || other.restaurantId == restaurantId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tableId,status,restaurantId);

@override
String toString() {
  return 'TableStatusModel(tableId: $tableId, status: $status, restaurantId: $restaurantId)';
}


}

/// @nodoc
abstract mixin class _$TableStatusModelCopyWith<$Res> implements $TableStatusModelCopyWith<$Res> {
  factory _$TableStatusModelCopyWith(_TableStatusModel value, $Res Function(_TableStatusModel) _then) = __$TableStatusModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? tableId,@JsonKey(name: 'status') String? status,@JsonKey(name: 'restaurant_id') String? restaurantId
});




}
/// @nodoc
class __$TableStatusModelCopyWithImpl<$Res>
    implements _$TableStatusModelCopyWith<$Res> {
  __$TableStatusModelCopyWithImpl(this._self, this._then);

  final _TableStatusModel _self;
  final $Res Function(_TableStatusModel) _then;

/// Create a copy of TableStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tableId = freezed,Object? status = freezed,Object? restaurantId = freezed,}) {
  return _then(_TableStatusModel(
tableId: freezed == tableId ? _self.tableId : tableId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,restaurantId: freezed == restaurantId ? _self.restaurantId : restaurantId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
