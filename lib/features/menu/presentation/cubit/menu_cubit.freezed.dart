// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MenuState {

 QrOrderingStatus get menuStatus; String get tableId; RestaurantEntity? get restaurant; List<CategoryEntity> get categories; List<MenuItemEntity> get items; List<MenuItemEntity> get filteredItems; int? get selectedCategoryId; String get searchQuery; Failure? get failure;
/// Create a copy of MenuState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MenuStateCopyWith<MenuState> get copyWith => _$MenuStateCopyWithImpl<MenuState>(this as MenuState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MenuState&&(identical(other.menuStatus, menuStatus) || other.menuStatus == menuStatus)&&(identical(other.tableId, tableId) || other.tableId == tableId)&&(identical(other.restaurant, restaurant) || other.restaurant == restaurant)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.items, items)&&const DeepCollectionEquality().equals(other.filteredItems, filteredItems)&&(identical(other.selectedCategoryId, selectedCategoryId) || other.selectedCategoryId == selectedCategoryId)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,menuStatus,tableId,restaurant,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(items),const DeepCollectionEquality().hash(filteredItems),selectedCategoryId,searchQuery,failure);

@override
String toString() {
  return 'MenuState(menuStatus: $menuStatus, tableId: $tableId, restaurant: $restaurant, categories: $categories, items: $items, filteredItems: $filteredItems, selectedCategoryId: $selectedCategoryId, searchQuery: $searchQuery, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $MenuStateCopyWith<$Res>  {
  factory $MenuStateCopyWith(MenuState value, $Res Function(MenuState) _then) = _$MenuStateCopyWithImpl;
@useResult
$Res call({
 QrOrderingStatus menuStatus, String tableId, RestaurantEntity? restaurant, List<CategoryEntity> categories, List<MenuItemEntity> items, List<MenuItemEntity> filteredItems, int? selectedCategoryId, String searchQuery, Failure? failure
});


$RestaurantEntityCopyWith<$Res>? get restaurant;

}
/// @nodoc
class _$MenuStateCopyWithImpl<$Res>
    implements $MenuStateCopyWith<$Res> {
  _$MenuStateCopyWithImpl(this._self, this._then);

  final MenuState _self;
  final $Res Function(MenuState) _then;

/// Create a copy of MenuState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? menuStatus = null,Object? tableId = null,Object? restaurant = freezed,Object? categories = null,Object? items = null,Object? filteredItems = null,Object? selectedCategoryId = freezed,Object? searchQuery = null,Object? failure = freezed,}) {
  return _then(_self.copyWith(
menuStatus: null == menuStatus ? _self.menuStatus : menuStatus // ignore: cast_nullable_to_non_nullable
as QrOrderingStatus,tableId: null == tableId ? _self.tableId : tableId // ignore: cast_nullable_to_non_nullable
as String,restaurant: freezed == restaurant ? _self.restaurant : restaurant // ignore: cast_nullable_to_non_nullable
as RestaurantEntity?,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryEntity>,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<MenuItemEntity>,filteredItems: null == filteredItems ? _self.filteredItems : filteredItems // ignore: cast_nullable_to_non_nullable
as List<MenuItemEntity>,selectedCategoryId: freezed == selectedCategoryId ? _self.selectedCategoryId : selectedCategoryId // ignore: cast_nullable_to_non_nullable
as int?,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}
/// Create a copy of MenuState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RestaurantEntityCopyWith<$Res>? get restaurant {
    if (_self.restaurant == null) {
    return null;
  }

  return $RestaurantEntityCopyWith<$Res>(_self.restaurant!, (value) {
    return _then(_self.copyWith(restaurant: value));
  });
}
}


/// Adds pattern-matching-related methods to [MenuState].
extension MenuStatePatterns on MenuState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MenuState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MenuState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MenuState value)  $default,){
final _that = this;
switch (_that) {
case _MenuState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MenuState value)?  $default,){
final _that = this;
switch (_that) {
case _MenuState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( QrOrderingStatus menuStatus,  String tableId,  RestaurantEntity? restaurant,  List<CategoryEntity> categories,  List<MenuItemEntity> items,  List<MenuItemEntity> filteredItems,  int? selectedCategoryId,  String searchQuery,  Failure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MenuState() when $default != null:
return $default(_that.menuStatus,_that.tableId,_that.restaurant,_that.categories,_that.items,_that.filteredItems,_that.selectedCategoryId,_that.searchQuery,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( QrOrderingStatus menuStatus,  String tableId,  RestaurantEntity? restaurant,  List<CategoryEntity> categories,  List<MenuItemEntity> items,  List<MenuItemEntity> filteredItems,  int? selectedCategoryId,  String searchQuery,  Failure? failure)  $default,) {final _that = this;
switch (_that) {
case _MenuState():
return $default(_that.menuStatus,_that.tableId,_that.restaurant,_that.categories,_that.items,_that.filteredItems,_that.selectedCategoryId,_that.searchQuery,_that.failure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( QrOrderingStatus menuStatus,  String tableId,  RestaurantEntity? restaurant,  List<CategoryEntity> categories,  List<MenuItemEntity> items,  List<MenuItemEntity> filteredItems,  int? selectedCategoryId,  String searchQuery,  Failure? failure)?  $default,) {final _that = this;
switch (_that) {
case _MenuState() when $default != null:
return $default(_that.menuStatus,_that.tableId,_that.restaurant,_that.categories,_that.items,_that.filteredItems,_that.selectedCategoryId,_that.searchQuery,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _MenuState extends MenuState {
   _MenuState({this.menuStatus = QrOrderingStatus.pure, this.tableId = '', this.restaurant, final  List<CategoryEntity> categories = const [], final  List<MenuItemEntity> items = const [], final  List<MenuItemEntity> filteredItems = const [], this.selectedCategoryId, this.searchQuery = '', this.failure}): _categories = categories,_items = items,_filteredItems = filteredItems,super._();
  

@override@JsonKey() final  QrOrderingStatus menuStatus;
@override@JsonKey() final  String tableId;
@override final  RestaurantEntity? restaurant;
 final  List<CategoryEntity> _categories;
@override@JsonKey() List<CategoryEntity> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<MenuItemEntity> _items;
@override@JsonKey() List<MenuItemEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  List<MenuItemEntity> _filteredItems;
@override@JsonKey() List<MenuItemEntity> get filteredItems {
  if (_filteredItems is EqualUnmodifiableListView) return _filteredItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredItems);
}

@override final  int? selectedCategoryId;
@override@JsonKey() final  String searchQuery;
@override final  Failure? failure;

/// Create a copy of MenuState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MenuStateCopyWith<_MenuState> get copyWith => __$MenuStateCopyWithImpl<_MenuState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MenuState&&(identical(other.menuStatus, menuStatus) || other.menuStatus == menuStatus)&&(identical(other.tableId, tableId) || other.tableId == tableId)&&(identical(other.restaurant, restaurant) || other.restaurant == restaurant)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._items, _items)&&const DeepCollectionEquality().equals(other._filteredItems, _filteredItems)&&(identical(other.selectedCategoryId, selectedCategoryId) || other.selectedCategoryId == selectedCategoryId)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,menuStatus,tableId,restaurant,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_items),const DeepCollectionEquality().hash(_filteredItems),selectedCategoryId,searchQuery,failure);

@override
String toString() {
  return 'MenuState(menuStatus: $menuStatus, tableId: $tableId, restaurant: $restaurant, categories: $categories, items: $items, filteredItems: $filteredItems, selectedCategoryId: $selectedCategoryId, searchQuery: $searchQuery, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$MenuStateCopyWith<$Res> implements $MenuStateCopyWith<$Res> {
  factory _$MenuStateCopyWith(_MenuState value, $Res Function(_MenuState) _then) = __$MenuStateCopyWithImpl;
@override @useResult
$Res call({
 QrOrderingStatus menuStatus, String tableId, RestaurantEntity? restaurant, List<CategoryEntity> categories, List<MenuItemEntity> items, List<MenuItemEntity> filteredItems, int? selectedCategoryId, String searchQuery, Failure? failure
});


@override $RestaurantEntityCopyWith<$Res>? get restaurant;

}
/// @nodoc
class __$MenuStateCopyWithImpl<$Res>
    implements _$MenuStateCopyWith<$Res> {
  __$MenuStateCopyWithImpl(this._self, this._then);

  final _MenuState _self;
  final $Res Function(_MenuState) _then;

/// Create a copy of MenuState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? menuStatus = null,Object? tableId = null,Object? restaurant = freezed,Object? categories = null,Object? items = null,Object? filteredItems = null,Object? selectedCategoryId = freezed,Object? searchQuery = null,Object? failure = freezed,}) {
  return _then(_MenuState(
menuStatus: null == menuStatus ? _self.menuStatus : menuStatus // ignore: cast_nullable_to_non_nullable
as QrOrderingStatus,tableId: null == tableId ? _self.tableId : tableId // ignore: cast_nullable_to_non_nullable
as String,restaurant: freezed == restaurant ? _self.restaurant : restaurant // ignore: cast_nullable_to_non_nullable
as RestaurantEntity?,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryEntity>,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<MenuItemEntity>,filteredItems: null == filteredItems ? _self._filteredItems : filteredItems // ignore: cast_nullable_to_non_nullable
as List<MenuItemEntity>,selectedCategoryId: freezed == selectedCategoryId ? _self.selectedCategoryId : selectedCategoryId // ignore: cast_nullable_to_non_nullable
as int?,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

/// Create a copy of MenuState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RestaurantEntityCopyWith<$Res>? get restaurant {
    if (_self.restaurant == null) {
    return null;
  }

  return $RestaurantEntityCopyWith<$Res>(_self.restaurant!, (value) {
    return _then(_self.copyWith(restaurant: value));
  });
}
}

// dart format on
