// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MenuResponseEntity {

 RestaurantEntity get restaurant; List<CategoryEntity> get categories; List<MenuItemEntity> get items;
/// Create a copy of MenuResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MenuResponseEntityCopyWith<MenuResponseEntity> get copyWith => _$MenuResponseEntityCopyWithImpl<MenuResponseEntity>(this as MenuResponseEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MenuResponseEntity&&(identical(other.restaurant, restaurant) || other.restaurant == restaurant)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.items, items));
}


@override
int get hashCode => Object.hash(runtimeType,restaurant,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'MenuResponseEntity(restaurant: $restaurant, categories: $categories, items: $items)';
}


}

/// @nodoc
abstract mixin class $MenuResponseEntityCopyWith<$Res>  {
  factory $MenuResponseEntityCopyWith(MenuResponseEntity value, $Res Function(MenuResponseEntity) _then) = _$MenuResponseEntityCopyWithImpl;
@useResult
$Res call({
 RestaurantEntity restaurant, List<CategoryEntity> categories, List<MenuItemEntity> items
});


$RestaurantEntityCopyWith<$Res> get restaurant;

}
/// @nodoc
class _$MenuResponseEntityCopyWithImpl<$Res>
    implements $MenuResponseEntityCopyWith<$Res> {
  _$MenuResponseEntityCopyWithImpl(this._self, this._then);

  final MenuResponseEntity _self;
  final $Res Function(MenuResponseEntity) _then;

/// Create a copy of MenuResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? restaurant = null,Object? categories = null,Object? items = null,}) {
  return _then(_self.copyWith(
restaurant: null == restaurant ? _self.restaurant : restaurant // ignore: cast_nullable_to_non_nullable
as RestaurantEntity,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryEntity>,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<MenuItemEntity>,
  ));
}
/// Create a copy of MenuResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RestaurantEntityCopyWith<$Res> get restaurant {
  
  return $RestaurantEntityCopyWith<$Res>(_self.restaurant, (value) {
    return _then(_self.copyWith(restaurant: value));
  });
}
}


/// Adds pattern-matching-related methods to [MenuResponseEntity].
extension MenuResponseEntityPatterns on MenuResponseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MenuResponseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MenuResponseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MenuResponseEntity value)  $default,){
final _that = this;
switch (_that) {
case _MenuResponseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MenuResponseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MenuResponseEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RestaurantEntity restaurant,  List<CategoryEntity> categories,  List<MenuItemEntity> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MenuResponseEntity() when $default != null:
return $default(_that.restaurant,_that.categories,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RestaurantEntity restaurant,  List<CategoryEntity> categories,  List<MenuItemEntity> items)  $default,) {final _that = this;
switch (_that) {
case _MenuResponseEntity():
return $default(_that.restaurant,_that.categories,_that.items);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RestaurantEntity restaurant,  List<CategoryEntity> categories,  List<MenuItemEntity> items)?  $default,) {final _that = this;
switch (_that) {
case _MenuResponseEntity() when $default != null:
return $default(_that.restaurant,_that.categories,_that.items);case _:
  return null;

}
}

}

/// @nodoc


class _MenuResponseEntity implements MenuResponseEntity {
  const _MenuResponseEntity({required this.restaurant, required final  List<CategoryEntity> categories, required final  List<MenuItemEntity> items}): _categories = categories,_items = items;
  

@override final  RestaurantEntity restaurant;
 final  List<CategoryEntity> _categories;
@override List<CategoryEntity> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<MenuItemEntity> _items;
@override List<MenuItemEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of MenuResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MenuResponseEntityCopyWith<_MenuResponseEntity> get copyWith => __$MenuResponseEntityCopyWithImpl<_MenuResponseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MenuResponseEntity&&(identical(other.restaurant, restaurant) || other.restaurant == restaurant)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,restaurant,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'MenuResponseEntity(restaurant: $restaurant, categories: $categories, items: $items)';
}


}

/// @nodoc
abstract mixin class _$MenuResponseEntityCopyWith<$Res> implements $MenuResponseEntityCopyWith<$Res> {
  factory _$MenuResponseEntityCopyWith(_MenuResponseEntity value, $Res Function(_MenuResponseEntity) _then) = __$MenuResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 RestaurantEntity restaurant, List<CategoryEntity> categories, List<MenuItemEntity> items
});


@override $RestaurantEntityCopyWith<$Res> get restaurant;

}
/// @nodoc
class __$MenuResponseEntityCopyWithImpl<$Res>
    implements _$MenuResponseEntityCopyWith<$Res> {
  __$MenuResponseEntityCopyWithImpl(this._self, this._then);

  final _MenuResponseEntity _self;
  final $Res Function(_MenuResponseEntity) _then;

/// Create a copy of MenuResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? restaurant = null,Object? categories = null,Object? items = null,}) {
  return _then(_MenuResponseEntity(
restaurant: null == restaurant ? _self.restaurant : restaurant // ignore: cast_nullable_to_non_nullable
as RestaurantEntity,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryEntity>,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<MenuItemEntity>,
  ));
}

/// Create a copy of MenuResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RestaurantEntityCopyWith<$Res> get restaurant {
  
  return $RestaurantEntityCopyWith<$Res>(_self.restaurant, (value) {
    return _then(_self.copyWith(restaurant: value));
  });
}
}

// dart format on
