// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customization_group_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CustomizationGroupEntity {

 int get id; String get name; bool get required; int get maxSelections; List<CustomizationOptionEntity> get options;
/// Create a copy of CustomizationGroupEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomizationGroupEntityCopyWith<CustomizationGroupEntity> get copyWith => _$CustomizationGroupEntityCopyWithImpl<CustomizationGroupEntity>(this as CustomizationGroupEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomizationGroupEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.required, required) || other.required == required)&&(identical(other.maxSelections, maxSelections) || other.maxSelections == maxSelections)&&const DeepCollectionEquality().equals(other.options, options));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,required,maxSelections,const DeepCollectionEquality().hash(options));

@override
String toString() {
  return 'CustomizationGroupEntity(id: $id, name: $name, required: $required, maxSelections: $maxSelections, options: $options)';
}


}

/// @nodoc
abstract mixin class $CustomizationGroupEntityCopyWith<$Res>  {
  factory $CustomizationGroupEntityCopyWith(CustomizationGroupEntity value, $Res Function(CustomizationGroupEntity) _then) = _$CustomizationGroupEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, bool required, int maxSelections, List<CustomizationOptionEntity> options
});




}
/// @nodoc
class _$CustomizationGroupEntityCopyWithImpl<$Res>
    implements $CustomizationGroupEntityCopyWith<$Res> {
  _$CustomizationGroupEntityCopyWithImpl(this._self, this._then);

  final CustomizationGroupEntity _self;
  final $Res Function(CustomizationGroupEntity) _then;

/// Create a copy of CustomizationGroupEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? required = null,Object? maxSelections = null,Object? options = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,maxSelections: null == maxSelections ? _self.maxSelections : maxSelections // ignore: cast_nullable_to_non_nullable
as int,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<CustomizationOptionEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomizationGroupEntity].
extension CustomizationGroupEntityPatterns on CustomizationGroupEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomizationGroupEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomizationGroupEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomizationGroupEntity value)  $default,){
final _that = this;
switch (_that) {
case _CustomizationGroupEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomizationGroupEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CustomizationGroupEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  bool required,  int maxSelections,  List<CustomizationOptionEntity> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomizationGroupEntity() when $default != null:
return $default(_that.id,_that.name,_that.required,_that.maxSelections,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  bool required,  int maxSelections,  List<CustomizationOptionEntity> options)  $default,) {final _that = this;
switch (_that) {
case _CustomizationGroupEntity():
return $default(_that.id,_that.name,_that.required,_that.maxSelections,_that.options);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  bool required,  int maxSelections,  List<CustomizationOptionEntity> options)?  $default,) {final _that = this;
switch (_that) {
case _CustomizationGroupEntity() when $default != null:
return $default(_that.id,_that.name,_that.required,_that.maxSelections,_that.options);case _:
  return null;

}
}

}

/// @nodoc


class _CustomizationGroupEntity implements CustomizationGroupEntity {
  const _CustomizationGroupEntity({required this.id, required this.name, required this.required, required this.maxSelections, required final  List<CustomizationOptionEntity> options}): _options = options;
  

@override final  int id;
@override final  String name;
@override final  bool required;
@override final  int maxSelections;
 final  List<CustomizationOptionEntity> _options;
@override List<CustomizationOptionEntity> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of CustomizationGroupEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomizationGroupEntityCopyWith<_CustomizationGroupEntity> get copyWith => __$CustomizationGroupEntityCopyWithImpl<_CustomizationGroupEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomizationGroupEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.required, required) || other.required == required)&&(identical(other.maxSelections, maxSelections) || other.maxSelections == maxSelections)&&const DeepCollectionEquality().equals(other._options, _options));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,required,maxSelections,const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'CustomizationGroupEntity(id: $id, name: $name, required: $required, maxSelections: $maxSelections, options: $options)';
}


}

/// @nodoc
abstract mixin class _$CustomizationGroupEntityCopyWith<$Res> implements $CustomizationGroupEntityCopyWith<$Res> {
  factory _$CustomizationGroupEntityCopyWith(_CustomizationGroupEntity value, $Res Function(_CustomizationGroupEntity) _then) = __$CustomizationGroupEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, bool required, int maxSelections, List<CustomizationOptionEntity> options
});




}
/// @nodoc
class __$CustomizationGroupEntityCopyWithImpl<$Res>
    implements _$CustomizationGroupEntityCopyWith<$Res> {
  __$CustomizationGroupEntityCopyWithImpl(this._self, this._then);

  final _CustomizationGroupEntity _self;
  final $Res Function(_CustomizationGroupEntity) _then;

/// Create a copy of CustomizationGroupEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? required = null,Object? maxSelections = null,Object? options = null,}) {
  return _then(_CustomizationGroupEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,maxSelections: null == maxSelections ? _self.maxSelections : maxSelections // ignore: cast_nullable_to_non_nullable
as int,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<CustomizationOptionEntity>,
  ));
}


}

// dart format on
