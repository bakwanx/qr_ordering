// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MenuItemEntity {

 int get id; String get name; String get description; double get price; int get categoryId; String? get imageUrl; List<CustomizationGroupEntity> get customizationGroups;
/// Create a copy of MenuItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MenuItemEntityCopyWith<MenuItemEntity> get copyWith => _$MenuItemEntityCopyWithImpl<MenuItemEntity>(this as MenuItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MenuItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other.customizationGroups, customizationGroups));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,price,categoryId,imageUrl,const DeepCollectionEquality().hash(customizationGroups));

@override
String toString() {
  return 'MenuItemEntity(id: $id, name: $name, description: $description, price: $price, categoryId: $categoryId, imageUrl: $imageUrl, customizationGroups: $customizationGroups)';
}


}

/// @nodoc
abstract mixin class $MenuItemEntityCopyWith<$Res>  {
  factory $MenuItemEntityCopyWith(MenuItemEntity value, $Res Function(MenuItemEntity) _then) = _$MenuItemEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String description, double price, int categoryId, String? imageUrl, List<CustomizationGroupEntity> customizationGroups
});




}
/// @nodoc
class _$MenuItemEntityCopyWithImpl<$Res>
    implements $MenuItemEntityCopyWith<$Res> {
  _$MenuItemEntityCopyWithImpl(this._self, this._then);

  final MenuItemEntity _self;
  final $Res Function(MenuItemEntity) _then;

/// Create a copy of MenuItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? price = null,Object? categoryId = null,Object? imageUrl = freezed,Object? customizationGroups = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,customizationGroups: null == customizationGroups ? _self.customizationGroups : customizationGroups // ignore: cast_nullable_to_non_nullable
as List<CustomizationGroupEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [MenuItemEntity].
extension MenuItemEntityPatterns on MenuItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MenuItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MenuItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MenuItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _MenuItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MenuItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MenuItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String description,  double price,  int categoryId,  String? imageUrl,  List<CustomizationGroupEntity> customizationGroups)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MenuItemEntity() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.price,_that.categoryId,_that.imageUrl,_that.customizationGroups);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String description,  double price,  int categoryId,  String? imageUrl,  List<CustomizationGroupEntity> customizationGroups)  $default,) {final _that = this;
switch (_that) {
case _MenuItemEntity():
return $default(_that.id,_that.name,_that.description,_that.price,_that.categoryId,_that.imageUrl,_that.customizationGroups);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String description,  double price,  int categoryId,  String? imageUrl,  List<CustomizationGroupEntity> customizationGroups)?  $default,) {final _that = this;
switch (_that) {
case _MenuItemEntity() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.price,_that.categoryId,_that.imageUrl,_that.customizationGroups);case _:
  return null;

}
}

}

/// @nodoc


class _MenuItemEntity implements MenuItemEntity {
  const _MenuItemEntity({required this.id, required this.name, required this.description, required this.price, required this.categoryId, this.imageUrl, required final  List<CustomizationGroupEntity> customizationGroups}): _customizationGroups = customizationGroups;
  

@override final  int id;
@override final  String name;
@override final  String description;
@override final  double price;
@override final  int categoryId;
@override final  String? imageUrl;
 final  List<CustomizationGroupEntity> _customizationGroups;
@override List<CustomizationGroupEntity> get customizationGroups {
  if (_customizationGroups is EqualUnmodifiableListView) return _customizationGroups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_customizationGroups);
}


/// Create a copy of MenuItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MenuItemEntityCopyWith<_MenuItemEntity> get copyWith => __$MenuItemEntityCopyWithImpl<_MenuItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MenuItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other._customizationGroups, _customizationGroups));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,price,categoryId,imageUrl,const DeepCollectionEquality().hash(_customizationGroups));

@override
String toString() {
  return 'MenuItemEntity(id: $id, name: $name, description: $description, price: $price, categoryId: $categoryId, imageUrl: $imageUrl, customizationGroups: $customizationGroups)';
}


}

/// @nodoc
abstract mixin class _$MenuItemEntityCopyWith<$Res> implements $MenuItemEntityCopyWith<$Res> {
  factory _$MenuItemEntityCopyWith(_MenuItemEntity value, $Res Function(_MenuItemEntity) _then) = __$MenuItemEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String description, double price, int categoryId, String? imageUrl, List<CustomizationGroupEntity> customizationGroups
});




}
/// @nodoc
class __$MenuItemEntityCopyWithImpl<$Res>
    implements _$MenuItemEntityCopyWith<$Res> {
  __$MenuItemEntityCopyWithImpl(this._self, this._then);

  final _MenuItemEntity _self;
  final $Res Function(_MenuItemEntity) _then;

/// Create a copy of MenuItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? price = null,Object? categoryId = null,Object? imageUrl = freezed,Object? customizationGroups = null,}) {
  return _then(_MenuItemEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,customizationGroups: null == customizationGroups ? _self._customizationGroups : customizationGroups // ignore: cast_nullable_to_non_nullable
as List<CustomizationGroupEntity>,
  ));
}


}

// dart format on
