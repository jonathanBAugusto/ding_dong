// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alarm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Alarm implements DiagnosticableTreeMixin {

 int get id; String get label; AlarmAsset get soundAsset; AlarmRepeatMode get repeatMode; List<int> get customRepeatDays;@JsonKey(fromJson: _timeFromJson, toJson: _timeToJson) TimeOfDay get time; bool get isActive;
/// Create a copy of Alarm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlarmCopyWith<Alarm> get copyWith => _$AlarmCopyWithImpl<Alarm>(this as Alarm, _$identity);

  /// Serializes this Alarm to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Alarm'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('label', label))..add(DiagnosticsProperty('soundAsset', soundAsset))..add(DiagnosticsProperty('repeatMode', repeatMode))..add(DiagnosticsProperty('customRepeatDays', customRepeatDays))..add(DiagnosticsProperty('time', time))..add(DiagnosticsProperty('isActive', isActive));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Alarm&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.soundAsset, soundAsset) || other.soundAsset == soundAsset)&&(identical(other.repeatMode, repeatMode) || other.repeatMode == repeatMode)&&const DeepCollectionEquality().equals(other.customRepeatDays, customRepeatDays)&&(identical(other.time, time) || other.time == time)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,soundAsset,repeatMode,const DeepCollectionEquality().hash(customRepeatDays),time,isActive);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Alarm(id: $id, label: $label, soundAsset: $soundAsset, repeatMode: $repeatMode, customRepeatDays: $customRepeatDays, time: $time, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $AlarmCopyWith<$Res>  {
  factory $AlarmCopyWith(Alarm value, $Res Function(Alarm) _then) = _$AlarmCopyWithImpl;
@useResult
$Res call({
 int id, String label, AlarmAsset soundAsset, AlarmRepeatMode repeatMode, List<int> customRepeatDays,@JsonKey(fromJson: _timeFromJson, toJson: _timeToJson) TimeOfDay time, bool isActive
});


$AlarmAssetCopyWith<$Res> get soundAsset;

}
/// @nodoc
class _$AlarmCopyWithImpl<$Res>
    implements $AlarmCopyWith<$Res> {
  _$AlarmCopyWithImpl(this._self, this._then);

  final Alarm _self;
  final $Res Function(Alarm) _then;

/// Create a copy of Alarm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? soundAsset = null,Object? repeatMode = null,Object? customRepeatDays = null,Object? time = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,soundAsset: null == soundAsset ? _self.soundAsset : soundAsset // ignore: cast_nullable_to_non_nullable
as AlarmAsset,repeatMode: null == repeatMode ? _self.repeatMode : repeatMode // ignore: cast_nullable_to_non_nullable
as AlarmRepeatMode,customRepeatDays: null == customRepeatDays ? _self.customRepeatDays : customRepeatDays // ignore: cast_nullable_to_non_nullable
as List<int>,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as TimeOfDay,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of Alarm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlarmAssetCopyWith<$Res> get soundAsset {
  
  return $AlarmAssetCopyWith<$Res>(_self.soundAsset, (value) {
    return _then(_self.copyWith(soundAsset: value));
  });
}
}


/// Adds pattern-matching-related methods to [Alarm].
extension AlarmPatterns on Alarm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Alarm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Alarm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Alarm value)  $default,){
final _that = this;
switch (_that) {
case _Alarm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Alarm value)?  $default,){
final _that = this;
switch (_that) {
case _Alarm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String label,  AlarmAsset soundAsset,  AlarmRepeatMode repeatMode,  List<int> customRepeatDays, @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)  TimeOfDay time,  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Alarm() when $default != null:
return $default(_that.id,_that.label,_that.soundAsset,_that.repeatMode,_that.customRepeatDays,_that.time,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String label,  AlarmAsset soundAsset,  AlarmRepeatMode repeatMode,  List<int> customRepeatDays, @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)  TimeOfDay time,  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _Alarm():
return $default(_that.id,_that.label,_that.soundAsset,_that.repeatMode,_that.customRepeatDays,_that.time,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String label,  AlarmAsset soundAsset,  AlarmRepeatMode repeatMode,  List<int> customRepeatDays, @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)  TimeOfDay time,  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _Alarm() when $default != null:
return $default(_that.id,_that.label,_that.soundAsset,_that.repeatMode,_that.customRepeatDays,_that.time,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Alarm extends Alarm with DiagnosticableTreeMixin {
  const _Alarm({required this.id, required this.label, required this.soundAsset, required this.repeatMode, final  List<int> customRepeatDays = const [], @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson) required this.time, this.isActive = true}): _customRepeatDays = customRepeatDays,super._();
  factory _Alarm.fromJson(Map<String, dynamic> json) => _$AlarmFromJson(json);

@override final  int id;
@override final  String label;
@override final  AlarmAsset soundAsset;
@override final  AlarmRepeatMode repeatMode;
 final  List<int> _customRepeatDays;
@override@JsonKey() List<int> get customRepeatDays {
  if (_customRepeatDays is EqualUnmodifiableListView) return _customRepeatDays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_customRepeatDays);
}

@override@JsonKey(fromJson: _timeFromJson, toJson: _timeToJson) final  TimeOfDay time;
@override@JsonKey() final  bool isActive;

/// Create a copy of Alarm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlarmCopyWith<_Alarm> get copyWith => __$AlarmCopyWithImpl<_Alarm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AlarmToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Alarm'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('label', label))..add(DiagnosticsProperty('soundAsset', soundAsset))..add(DiagnosticsProperty('repeatMode', repeatMode))..add(DiagnosticsProperty('customRepeatDays', customRepeatDays))..add(DiagnosticsProperty('time', time))..add(DiagnosticsProperty('isActive', isActive));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Alarm&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.soundAsset, soundAsset) || other.soundAsset == soundAsset)&&(identical(other.repeatMode, repeatMode) || other.repeatMode == repeatMode)&&const DeepCollectionEquality().equals(other._customRepeatDays, _customRepeatDays)&&(identical(other.time, time) || other.time == time)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,soundAsset,repeatMode,const DeepCollectionEquality().hash(_customRepeatDays),time,isActive);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Alarm(id: $id, label: $label, soundAsset: $soundAsset, repeatMode: $repeatMode, customRepeatDays: $customRepeatDays, time: $time, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$AlarmCopyWith<$Res> implements $AlarmCopyWith<$Res> {
  factory _$AlarmCopyWith(_Alarm value, $Res Function(_Alarm) _then) = __$AlarmCopyWithImpl;
@override @useResult
$Res call({
 int id, String label, AlarmAsset soundAsset, AlarmRepeatMode repeatMode, List<int> customRepeatDays,@JsonKey(fromJson: _timeFromJson, toJson: _timeToJson) TimeOfDay time, bool isActive
});


@override $AlarmAssetCopyWith<$Res> get soundAsset;

}
/// @nodoc
class __$AlarmCopyWithImpl<$Res>
    implements _$AlarmCopyWith<$Res> {
  __$AlarmCopyWithImpl(this._self, this._then);

  final _Alarm _self;
  final $Res Function(_Alarm) _then;

/// Create a copy of Alarm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? soundAsset = null,Object? repeatMode = null,Object? customRepeatDays = null,Object? time = null,Object? isActive = null,}) {
  return _then(_Alarm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,soundAsset: null == soundAsset ? _self.soundAsset : soundAsset // ignore: cast_nullable_to_non_nullable
as AlarmAsset,repeatMode: null == repeatMode ? _self.repeatMode : repeatMode // ignore: cast_nullable_to_non_nullable
as AlarmRepeatMode,customRepeatDays: null == customRepeatDays ? _self._customRepeatDays : customRepeatDays // ignore: cast_nullable_to_non_nullable
as List<int>,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as TimeOfDay,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of Alarm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlarmAssetCopyWith<$Res> get soundAsset {
  
  return $AlarmAssetCopyWith<$Res>(_self.soundAsset, (value) {
    return _then(_self.copyWith(soundAsset: value));
  });
}
}

// dart format on
