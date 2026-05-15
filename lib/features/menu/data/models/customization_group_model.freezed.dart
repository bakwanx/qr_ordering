// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customization_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomizationGroupModel {

 int? get id; String? get name; bool? get required;@JsonKey(name: 'max_selections') int? get maxSelections; List<CustomizationOptionModel> get options;
/// Create a copy of CustomizationGroupModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomizationGroupModelCopyWith<CustomizationGroupModel> get copyWith => _$CustomizationGroupModelCopyWithImpl<CustomizationGroupModel>(this as CustomizationGroupModel, _$identity);

  /// Serializes this CustomizationGroupModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomizationGroupModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.required, required) || other.required == required)&&(identical(other.maxSelections, maxSelections) || other.maxSelections == maxSelections)&&const DeepCollectionEquality().equals(other.options, options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,required,maxSelections,const DeepCollectionEquality().hash(options));

@override
String toString() {
  return 'CustomizationGroupModel(id: $id, name: $name, required: $required, maxSelections: $maxSelections, options: $options)';
}


}

/// @nodoc
abstract mixin class $CustomizationGroupModelCopyWith<$Res>  {
  factory $CustomizationGroupModelCopyWith(CustomizationGroupModel value, $Res Function(CustomizationGroupModel) _then) = _$CustomizationGroupModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, bool? required,@JsonKey(name: 'max_selections') int? maxSelections, List<CustomizationOptionModel> options
});




}
/// @nodoc
class _$CustomizationGroupModelCopyWithImpl<$Res>
    implements $CustomizationGroupModelCopyWith<$Res> {
  _$CustomizationGroupModelCopyWithImpl(this._self, this._then);

  final CustomizationGroupModel _self;
  final $Res Function(CustomizationGroupModel) _then;

/// Create a copy of CustomizationGroupModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? required = freezed,Object? maxSelections = freezed,Object? options = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool?,maxSelections: freezed == maxSelections ? _self.maxSelections : maxSelections // ignore: cast_nullable_to_non_nullable
as int?,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<CustomizationOptionModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomizationGroupModel].
extension CustomizationGroupModelPatterns on CustomizationGroupModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomizationGroupModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomizationGroupModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomizationGroupModel value)  $default,){
final _that = this;
switch (_that) {
case _CustomizationGroupModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomizationGroupModel value)?  $default,){
final _that = this;
switch (_that) {
case _CustomizationGroupModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  bool? required, @JsonKey(name: 'max_selections')  int? maxSelections,  List<CustomizationOptionModel> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomizationGroupModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  bool? required, @JsonKey(name: 'max_selections')  int? maxSelections,  List<CustomizationOptionModel> options)  $default,) {final _that = this;
switch (_that) {
case _CustomizationGroupModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  bool? required, @JsonKey(name: 'max_selections')  int? maxSelections,  List<CustomizationOptionModel> options)?  $default,) {final _that = this;
switch (_that) {
case _CustomizationGroupModel() when $default != null:
return $default(_that.id,_that.name,_that.required,_that.maxSelections,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomizationGroupModel implements CustomizationGroupModel {
  const _CustomizationGroupModel({this.id, this.name, this.required, @JsonKey(name: 'max_selections') this.maxSelections, final  List<CustomizationOptionModel> options = const []}): _options = options;
  factory _CustomizationGroupModel.fromJson(Map<String, dynamic> json) => _$CustomizationGroupModelFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  bool? required;
@override@JsonKey(name: 'max_selections') final  int? maxSelections;
 final  List<CustomizationOptionModel> _options;
@override@JsonKey() List<CustomizationOptionModel> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of CustomizationGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomizationGroupModelCopyWith<_CustomizationGroupModel> get copyWith => __$CustomizationGroupModelCopyWithImpl<_CustomizationGroupModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomizationGroupModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomizationGroupModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.required, required) || other.required == required)&&(identical(other.maxSelections, maxSelections) || other.maxSelections == maxSelections)&&const DeepCollectionEquality().equals(other._options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,required,maxSelections,const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'CustomizationGroupModel(id: $id, name: $name, required: $required, maxSelections: $maxSelections, options: $options)';
}


}

/// @nodoc
abstract mixin class _$CustomizationGroupModelCopyWith<$Res> implements $CustomizationGroupModelCopyWith<$Res> {
  factory _$CustomizationGroupModelCopyWith(_CustomizationGroupModel value, $Res Function(_CustomizationGroupModel) _then) = __$CustomizationGroupModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, bool? required,@JsonKey(name: 'max_selections') int? maxSelections, List<CustomizationOptionModel> options
});




}
/// @nodoc
class __$CustomizationGroupModelCopyWithImpl<$Res>
    implements _$CustomizationGroupModelCopyWith<$Res> {
  __$CustomizationGroupModelCopyWithImpl(this._self, this._then);

  final _CustomizationGroupModel _self;
  final $Res Function(_CustomizationGroupModel) _then;

/// Create a copy of CustomizationGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? required = freezed,Object? maxSelections = freezed,Object? options = null,}) {
  return _then(_CustomizationGroupModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool?,maxSelections: freezed == maxSelections ? _self.maxSelections : maxSelections // ignore: cast_nullable_to_non_nullable
as int?,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<CustomizationOptionModel>,
  ));
}


}

// dart format on
