// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateOrderRequestModel {

@JsonKey(name: 'table_id') String? get tableId; List<OrderItemModel> get items;@JsonKey(name: 'customer_note') String? get customerNote;
/// Create a copy of CreateOrderRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateOrderRequestModelCopyWith<CreateOrderRequestModel> get copyWith => _$CreateOrderRequestModelCopyWithImpl<CreateOrderRequestModel>(this as CreateOrderRequestModel, _$identity);

  /// Serializes this CreateOrderRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderRequestModel&&(identical(other.tableId, tableId) || other.tableId == tableId)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.customerNote, customerNote) || other.customerNote == customerNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tableId,const DeepCollectionEquality().hash(items),customerNote);

@override
String toString() {
  return 'CreateOrderRequestModel(tableId: $tableId, items: $items, customerNote: $customerNote)';
}


}

/// @nodoc
abstract mixin class $CreateOrderRequestModelCopyWith<$Res>  {
  factory $CreateOrderRequestModelCopyWith(CreateOrderRequestModel value, $Res Function(CreateOrderRequestModel) _then) = _$CreateOrderRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'table_id') String? tableId, List<OrderItemModel> items,@JsonKey(name: 'customer_note') String? customerNote
});




}
/// @nodoc
class _$CreateOrderRequestModelCopyWithImpl<$Res>
    implements $CreateOrderRequestModelCopyWith<$Res> {
  _$CreateOrderRequestModelCopyWithImpl(this._self, this._then);

  final CreateOrderRequestModel _self;
  final $Res Function(CreateOrderRequestModel) _then;

/// Create a copy of CreateOrderRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tableId = freezed,Object? items = null,Object? customerNote = freezed,}) {
  return _then(_self.copyWith(
tableId: freezed == tableId ? _self.tableId : tableId // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItemModel>,customerNote: freezed == customerNote ? _self.customerNote : customerNote // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateOrderRequestModel].
extension CreateOrderRequestModelPatterns on CreateOrderRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateOrderRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateOrderRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateOrderRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateOrderRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateOrderRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateOrderRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'table_id')  String? tableId,  List<OrderItemModel> items, @JsonKey(name: 'customer_note')  String? customerNote)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateOrderRequestModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'table_id')  String? tableId,  List<OrderItemModel> items, @JsonKey(name: 'customer_note')  String? customerNote)  $default,) {final _that = this;
switch (_that) {
case _CreateOrderRequestModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'table_id')  String? tableId,  List<OrderItemModel> items, @JsonKey(name: 'customer_note')  String? customerNote)?  $default,) {final _that = this;
switch (_that) {
case _CreateOrderRequestModel() when $default != null:
return $default(_that.tableId,_that.items,_that.customerNote);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateOrderRequestModel implements CreateOrderRequestModel {
  const _CreateOrderRequestModel({@JsonKey(name: 'table_id') this.tableId, final  List<OrderItemModel> items = const [], @JsonKey(name: 'customer_note') this.customerNote}): _items = items;
  factory _CreateOrderRequestModel.fromJson(Map<String, dynamic> json) => _$CreateOrderRequestModelFromJson(json);

@override@JsonKey(name: 'table_id') final  String? tableId;
 final  List<OrderItemModel> _items;
@override@JsonKey() List<OrderItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey(name: 'customer_note') final  String? customerNote;

/// Create a copy of CreateOrderRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateOrderRequestModelCopyWith<_CreateOrderRequestModel> get copyWith => __$CreateOrderRequestModelCopyWithImpl<_CreateOrderRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateOrderRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateOrderRequestModel&&(identical(other.tableId, tableId) || other.tableId == tableId)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.customerNote, customerNote) || other.customerNote == customerNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tableId,const DeepCollectionEquality().hash(_items),customerNote);

@override
String toString() {
  return 'CreateOrderRequestModel(tableId: $tableId, items: $items, customerNote: $customerNote)';
}


}

/// @nodoc
abstract mixin class _$CreateOrderRequestModelCopyWith<$Res> implements $CreateOrderRequestModelCopyWith<$Res> {
  factory _$CreateOrderRequestModelCopyWith(_CreateOrderRequestModel value, $Res Function(_CreateOrderRequestModel) _then) = __$CreateOrderRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'table_id') String? tableId, List<OrderItemModel> items,@JsonKey(name: 'customer_note') String? customerNote
});




}
/// @nodoc
class __$CreateOrderRequestModelCopyWithImpl<$Res>
    implements _$CreateOrderRequestModelCopyWith<$Res> {
  __$CreateOrderRequestModelCopyWithImpl(this._self, this._then);

  final _CreateOrderRequestModel _self;
  final $Res Function(_CreateOrderRequestModel) _then;

/// Create a copy of CreateOrderRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tableId = freezed,Object? items = null,Object? customerNote = freezed,}) {
  return _then(_CreateOrderRequestModel(
tableId: freezed == tableId ? _self.tableId : tableId // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItemModel>,customerNote: freezed == customerNote ? _self.customerNote : customerNote // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
