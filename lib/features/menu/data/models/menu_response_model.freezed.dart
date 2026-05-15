// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MenuResponseModel {

 RestaurantModel? get restaurant; List<CategoryModel> get categories; List<MenuItemModel> get items;
/// Create a copy of MenuResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MenuResponseModelCopyWith<MenuResponseModel> get copyWith => _$MenuResponseModelCopyWithImpl<MenuResponseModel>(this as MenuResponseModel, _$identity);

  /// Serializes this MenuResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MenuResponseModel&&(identical(other.restaurant, restaurant) || other.restaurant == restaurant)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,restaurant,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'MenuResponseModel(restaurant: $restaurant, categories: $categories, items: $items)';
}


}

/// @nodoc
abstract mixin class $MenuResponseModelCopyWith<$Res>  {
  factory $MenuResponseModelCopyWith(MenuResponseModel value, $Res Function(MenuResponseModel) _then) = _$MenuResponseModelCopyWithImpl;
@useResult
$Res call({
 RestaurantModel? restaurant, List<CategoryModel> categories, List<MenuItemModel> items
});


$RestaurantModelCopyWith<$Res>? get restaurant;

}
/// @nodoc
class _$MenuResponseModelCopyWithImpl<$Res>
    implements $MenuResponseModelCopyWith<$Res> {
  _$MenuResponseModelCopyWithImpl(this._self, this._then);

  final MenuResponseModel _self;
  final $Res Function(MenuResponseModel) _then;

/// Create a copy of MenuResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? restaurant = freezed,Object? categories = null,Object? items = null,}) {
  return _then(_self.copyWith(
restaurant: freezed == restaurant ? _self.restaurant : restaurant // ignore: cast_nullable_to_non_nullable
as RestaurantModel?,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<MenuItemModel>,
  ));
}
/// Create a copy of MenuResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RestaurantModelCopyWith<$Res>? get restaurant {
    if (_self.restaurant == null) {
    return null;
  }

  return $RestaurantModelCopyWith<$Res>(_self.restaurant!, (value) {
    return _then(_self.copyWith(restaurant: value));
  });
}
}


/// Adds pattern-matching-related methods to [MenuResponseModel].
extension MenuResponseModelPatterns on MenuResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MenuResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MenuResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MenuResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _MenuResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MenuResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _MenuResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RestaurantModel? restaurant,  List<CategoryModel> categories,  List<MenuItemModel> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MenuResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RestaurantModel? restaurant,  List<CategoryModel> categories,  List<MenuItemModel> items)  $default,) {final _that = this;
switch (_that) {
case _MenuResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RestaurantModel? restaurant,  List<CategoryModel> categories,  List<MenuItemModel> items)?  $default,) {final _that = this;
switch (_that) {
case _MenuResponseModel() when $default != null:
return $default(_that.restaurant,_that.categories,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MenuResponseModel implements MenuResponseModel {
  const _MenuResponseModel({this.restaurant, final  List<CategoryModel> categories = const [], final  List<MenuItemModel> items = const []}): _categories = categories,_items = items;
  factory _MenuResponseModel.fromJson(Map<String, dynamic> json) => _$MenuResponseModelFromJson(json);

@override final  RestaurantModel? restaurant;
 final  List<CategoryModel> _categories;
@override@JsonKey() List<CategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<MenuItemModel> _items;
@override@JsonKey() List<MenuItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of MenuResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MenuResponseModelCopyWith<_MenuResponseModel> get copyWith => __$MenuResponseModelCopyWithImpl<_MenuResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MenuResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MenuResponseModel&&(identical(other.restaurant, restaurant) || other.restaurant == restaurant)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,restaurant,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'MenuResponseModel(restaurant: $restaurant, categories: $categories, items: $items)';
}


}

/// @nodoc
abstract mixin class _$MenuResponseModelCopyWith<$Res> implements $MenuResponseModelCopyWith<$Res> {
  factory _$MenuResponseModelCopyWith(_MenuResponseModel value, $Res Function(_MenuResponseModel) _then) = __$MenuResponseModelCopyWithImpl;
@override @useResult
$Res call({
 RestaurantModel? restaurant, List<CategoryModel> categories, List<MenuItemModel> items
});


@override $RestaurantModelCopyWith<$Res>? get restaurant;

}
/// @nodoc
class __$MenuResponseModelCopyWithImpl<$Res>
    implements _$MenuResponseModelCopyWith<$Res> {
  __$MenuResponseModelCopyWithImpl(this._self, this._then);

  final _MenuResponseModel _self;
  final $Res Function(_MenuResponseModel) _then;

/// Create a copy of MenuResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? restaurant = freezed,Object? categories = null,Object? items = null,}) {
  return _then(_MenuResponseModel(
restaurant: freezed == restaurant ? _self.restaurant : restaurant // ignore: cast_nullable_to_non_nullable
as RestaurantModel?,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<MenuItemModel>,
  ));
}

/// Create a copy of MenuResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RestaurantModelCopyWith<$Res>? get restaurant {
    if (_self.restaurant == null) {
    return null;
  }

  return $RestaurantModelCopyWith<$Res>(_self.restaurant!, (value) {
    return _then(_self.copyWith(restaurant: value));
  });
}
}

// dart format on
