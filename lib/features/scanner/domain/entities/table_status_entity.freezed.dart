// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_status_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TableStatusEntity {

 String get tableId; String get status; String? get restaurantId;
/// Create a copy of TableStatusEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TableStatusEntityCopyWith<TableStatusEntity> get copyWith => _$TableStatusEntityCopyWithImpl<TableStatusEntity>(this as TableStatusEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TableStatusEntity&&(identical(other.tableId, tableId) || other.tableId == tableId)&&(identical(other.status, status) || other.status == status)&&(identical(other.restaurantId, restaurantId) || other.restaurantId == restaurantId));
}


@override
int get hashCode => Object.hash(runtimeType,tableId,status,restaurantId);

@override
String toString() {
  return 'TableStatusEntity(tableId: $tableId, status: $status, restaurantId: $restaurantId)';
}


}

/// @nodoc
abstract mixin class $TableStatusEntityCopyWith<$Res>  {
  factory $TableStatusEntityCopyWith(TableStatusEntity value, $Res Function(TableStatusEntity) _then) = _$TableStatusEntityCopyWithImpl;
@useResult
$Res call({
 String tableId, String status, String? restaurantId
});




}
/// @nodoc
class _$TableStatusEntityCopyWithImpl<$Res>
    implements $TableStatusEntityCopyWith<$Res> {
  _$TableStatusEntityCopyWithImpl(this._self, this._then);

  final TableStatusEntity _self;
  final $Res Function(TableStatusEntity) _then;

/// Create a copy of TableStatusEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tableId = null,Object? status = null,Object? restaurantId = freezed,}) {
  return _then(_self.copyWith(
tableId: null == tableId ? _self.tableId : tableId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,restaurantId: freezed == restaurantId ? _self.restaurantId : restaurantId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TableStatusEntity].
extension TableStatusEntityPatterns on TableStatusEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TableStatusEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TableStatusEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TableStatusEntity value)  $default,){
final _that = this;
switch (_that) {
case _TableStatusEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TableStatusEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TableStatusEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String tableId,  String status,  String? restaurantId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TableStatusEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String tableId,  String status,  String? restaurantId)  $default,) {final _that = this;
switch (_that) {
case _TableStatusEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String tableId,  String status,  String? restaurantId)?  $default,) {final _that = this;
switch (_that) {
case _TableStatusEntity() when $default != null:
return $default(_that.tableId,_that.status,_that.restaurantId);case _:
  return null;

}
}

}

/// @nodoc


class _TableStatusEntity implements TableStatusEntity {
  const _TableStatusEntity({required this.tableId, required this.status, this.restaurantId});
  

@override final  String tableId;
@override final  String status;
@override final  String? restaurantId;

/// Create a copy of TableStatusEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TableStatusEntityCopyWith<_TableStatusEntity> get copyWith => __$TableStatusEntityCopyWithImpl<_TableStatusEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TableStatusEntity&&(identical(other.tableId, tableId) || other.tableId == tableId)&&(identical(other.status, status) || other.status == status)&&(identical(other.restaurantId, restaurantId) || other.restaurantId == restaurantId));
}


@override
int get hashCode => Object.hash(runtimeType,tableId,status,restaurantId);

@override
String toString() {
  return 'TableStatusEntity(tableId: $tableId, status: $status, restaurantId: $restaurantId)';
}


}

/// @nodoc
abstract mixin class _$TableStatusEntityCopyWith<$Res> implements $TableStatusEntityCopyWith<$Res> {
  factory _$TableStatusEntityCopyWith(_TableStatusEntity value, $Res Function(_TableStatusEntity) _then) = __$TableStatusEntityCopyWithImpl;
@override @useResult
$Res call({
 String tableId, String status, String? restaurantId
});




}
/// @nodoc
class __$TableStatusEntityCopyWithImpl<$Res>
    implements _$TableStatusEntityCopyWith<$Res> {
  __$TableStatusEntityCopyWithImpl(this._self, this._then);

  final _TableStatusEntity _self;
  final $Res Function(_TableStatusEntity) _then;

/// Create a copy of TableStatusEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tableId = null,Object? status = null,Object? restaurantId = freezed,}) {
  return _then(_TableStatusEntity(
tableId: null == tableId ? _self.tableId : tableId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,restaurantId: freezed == restaurantId ? _self.restaurantId : restaurantId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
