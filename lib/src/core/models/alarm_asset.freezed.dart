// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alarm_asset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AlarmAsset {

 String get path; AssetType get type;
/// Create a copy of AlarmAsset
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlarmAssetCopyWith<AlarmAsset> get copyWith => _$AlarmAssetCopyWithImpl<AlarmAsset>(this as AlarmAsset, _$identity);

  /// Serializes this AlarmAsset to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlarmAsset&&(identical(other.path, path) || other.path == path)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path,type);

@override
String toString() {
  return 'AlarmAsset(path: $path, type: $type)';
}


}

/// @nodoc
abstract mixin class $AlarmAssetCopyWith<$Res>  {
  factory $AlarmAssetCopyWith(AlarmAsset value, $Res Function(AlarmAsset) _then) = _$AlarmAssetCopyWithImpl;
@useResult
$Res call({
 String path, AssetType type
});




}
/// @nodoc
class _$AlarmAssetCopyWithImpl<$Res>
    implements $AlarmAssetCopyWith<$Res> {
  _$AlarmAssetCopyWithImpl(this._self, this._then);

  final AlarmAsset _self;
  final $Res Function(AlarmAsset) _then;

/// Create a copy of AlarmAsset
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? path = null,Object? type = null,}) {
  return _then(_self.copyWith(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AssetType,
  ));
}

}


/// Adds pattern-matching-related methods to [AlarmAsset].
extension AlarmAssetPatterns on AlarmAsset {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlarmAsset value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlarmAsset() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlarmAsset value)  $default,){
final _that = this;
switch (_that) {
case _AlarmAsset():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlarmAsset value)?  $default,){
final _that = this;
switch (_that) {
case _AlarmAsset() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String path,  AssetType type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlarmAsset() when $default != null:
return $default(_that.path,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String path,  AssetType type)  $default,) {final _that = this;
switch (_that) {
case _AlarmAsset():
return $default(_that.path,_that.type);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String path,  AssetType type)?  $default,) {final _that = this;
switch (_that) {
case _AlarmAsset() when $default != null:
return $default(_that.path,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AlarmAsset implements AlarmAsset {
  const _AlarmAsset({this.path = '', this.type = AssetType.asset});
  factory _AlarmAsset.fromJson(Map<String, dynamic> json) => _$AlarmAssetFromJson(json);

@override@JsonKey() final  String path;
@override@JsonKey() final  AssetType type;

/// Create a copy of AlarmAsset
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlarmAssetCopyWith<_AlarmAsset> get copyWith => __$AlarmAssetCopyWithImpl<_AlarmAsset>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AlarmAssetToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlarmAsset&&(identical(other.path, path) || other.path == path)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path,type);

@override
String toString() {
  return 'AlarmAsset(path: $path, type: $type)';
}


}

/// @nodoc
abstract mixin class _$AlarmAssetCopyWith<$Res> implements $AlarmAssetCopyWith<$Res> {
  factory _$AlarmAssetCopyWith(_AlarmAsset value, $Res Function(_AlarmAsset) _then) = __$AlarmAssetCopyWithImpl;
@override @useResult
$Res call({
 String path, AssetType type
});




}
/// @nodoc
class __$AlarmAssetCopyWithImpl<$Res>
    implements _$AlarmAssetCopyWith<$Res> {
  __$AlarmAssetCopyWithImpl(this._self, this._then);

  final _AlarmAsset _self;
  final $Res Function(_AlarmAsset) _then;

/// Create a copy of AlarmAsset
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,Object? type = null,}) {
  return _then(_AlarmAsset(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AssetType,
  ));
}


}

// dart format on
