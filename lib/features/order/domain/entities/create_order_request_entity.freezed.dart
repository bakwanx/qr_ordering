// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateOrderRequestEntity {

 String get tableId; List<OrderItemEntity> get items; String? get customerNote;
/// Create a copy of CreateOrderRequestEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateOrderRequestEntityCopyWith<CreateOrderRequestEntity> get copyWith => _$CreateOrderRequestEntityCopyWithImpl<CreateOrderRequestEntity>(this as CreateOrderRequestEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderRequestEntity&&(identical(other.tableId, tableId) || other.tableId == tableId)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.customerNote, customerNote) || other.customerNote == customerNote));
}


@override
int get hashCode => Object.hash(runtimeType,tableId,const DeepCollectionEquality().hash(items),customerNote);

@override
String toString() {
  return 'CreateOrderRequestEntity(tableId: $tableId, items: $items, customerNote: $customerNote)';
}


}

/// @nodoc
abstract mixin class $CreateOrderRequestEntityCopyWith<$Res>  {
  factory $CreateOrderRequestEntityCopyWith(CreateOrderRequestEntity value, $Res Function(CreateOrderRequestEntity) _then) = _$CreateOrderRequestEntityCopyWithImpl;
@useResult
$Res call({
 String tableId, List<OrderItemEntity> items, String? customerNote
});




}
/// @nodoc
class _$CreateOrderRequestEntityCopyWithImpl<$Res>
    implements $CreateOrderRequestEntityCopyWith<$Res> {
  _$CreateOrderRequestEntityCopyWithImpl(this._self, this._then);

  final CreateOrderRequestEntity _self;
  final $Res Function(CreateOrderRequestEntity) _then;

/// Create a copy of CreateOrderRequestEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tableId = null,Object? items = null,Object? customerNote = freezed,}) {
  return _then(_self.copyWith(
tableId: null == tableId ? _self.tableId : tableId // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItemEntity>,customerNote: freezed == customerNote ? _self.customerNote : customerNote // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateOrderRequestEntity].
extension CreateOrderRequestEntityPatterns on CreateOrderRequestEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateOrderRequestEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateOrderRequestEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateOrderRequestEntity value)  $default,){
final _that = this;
switch (_that) {
case _CreateOrderRequestEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateOrderRequestEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CreateOrderRequestEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String tableId,  List<OrderItemEntity> items,  String? customerNote)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateOrderRequestEntity() when $default != null:
return $default(_that.tableId,_that.items,_that.customerNote);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String tableId,  List<OrderItemEntity> items,  String? customerNote)  $default,) {final _that = this;
switch (_that) {
case _CreateOrderRequestEntity():
return $default(_that.tableId,_that.items,_that.customerNote);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String tableId,  List<OrderItemEntity> items,  String? customerNote)?  $default,) {final _that = this;
switch (_that) {
case _CreateOrderRequestEntity() when $default != null:
return $default(_that.tableId,_that.items,_that.customerNote);case _:
  return null;

}
}

}

/// @nodoc


class _CreateOrderRequestEntity implements CreateOrderRequestEntity {
  const _CreateOrderRequestEntity({required this.tableId, required final  List<OrderItemEntity> items, this.customerNote}): _items = items;
  

@override final  String tableId;
 final  List<OrderItemEntity> _items;
@override List<OrderItemEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? customerNote;

/// Create a copy of CreateOrderRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateOrderRequestEntityCopyWith<_CreateOrderRequestEntity> get copyWith => __$CreateOrderRequestEntityCopyWithImpl<_CreateOrderRequestEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateOrderRequestEntity&&(identical(other.tableId, tableId) || other.tableId == tableId)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.customerNote, customerNote) || other.customerNote == customerNote));
}


@override
int get hashCode => Object.hash(runtimeType,tableId,const DeepCollectionEquality().hash(_items),customerNote);

@override
String toString() {
  return 'CreateOrderRequestEntity(tableId: $tableId, items: $items, customerNote: $customerNote)';
}


}

/// @nodoc
abstract mixin class _$CreateOrderRequestEntityCopyWith<$Res> implements $CreateOrderRequestEntityCopyWith<$Res> {
  factory _$CreateOrderRequestEntityCopyWith(_CreateOrderRequestEntity value, $Res Function(_CreateOrderRequestEntity) _then) = __$CreateOrderRequestEntityCopyWithImpl;
@override @useResult
$Res call({
 String tableId, List<OrderItemEntity> items, String? customerNote
});




}
/// @nodoc
class __$CreateOrderRequestEntityCopyWithImpl<$Res>
    implements _$CreateOrderRequestEntityCopyWith<$Res> {
  __$CreateOrderRequestEntityCopyWithImpl(this._self, this._then);

  final _CreateOrderRequestEntity _self;
  final $Res Function(_CreateOrderRequestEntity) _then;

/// Create a copy of CreateOrderRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tableId = null,Object? items = null,Object? customerNote = freezed,}) {
  return _then(_CreateOrderRequestEntity(
tableId: null == tableId ? _self.tableId : tableId // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItemEntity>,customerNote: freezed == customerNote ? _self.customerNote : customerNote // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
