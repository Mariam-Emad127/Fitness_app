// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'target_exersize_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TargetExersizeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TargetExersizeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TargetExersizeState()';
}


}

/// @nodoc
class $TargetExersizeStateCopyWith<$Res>  {
$TargetExersizeStateCopyWith(TargetExersizeState _, $Res Function(TargetExersizeState) __);
}


/// Adds pattern-matching-related methods to [TargetExersizeState].
extension TargetExersizeStatePatterns on TargetExersizeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( TargetListLoading value)?  targetListLoading,TResult Function( TargetListFailure value)?  targetListFailure,TResult Function( TargetListSucess value)?  targetListSucess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case TargetListLoading() when targetListLoading != null:
return targetListLoading(_that);case TargetListFailure() when targetListFailure != null:
return targetListFailure(_that);case TargetListSucess() when targetListSucess != null:
return targetListSucess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( TargetListLoading value)  targetListLoading,required TResult Function( TargetListFailure value)  targetListFailure,required TResult Function( TargetListSucess value)  targetListSucess,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case TargetListLoading():
return targetListLoading(_that);case TargetListFailure():
return targetListFailure(_that);case TargetListSucess():
return targetListSucess(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( TargetListLoading value)?  targetListLoading,TResult? Function( TargetListFailure value)?  targetListFailure,TResult? Function( TargetListSucess value)?  targetListSucess,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case TargetListLoading() when targetListLoading != null:
return targetListLoading(_that);case TargetListFailure() when targetListFailure != null:
return targetListFailure(_that);case TargetListSucess() when targetListSucess != null:
return targetListSucess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  targetListLoading,TResult Function( String messageFailure)?  targetListFailure,TResult Function( List<String> targetList)?  targetListSucess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case TargetListLoading() when targetListLoading != null:
return targetListLoading();case TargetListFailure() when targetListFailure != null:
return targetListFailure(_that.messageFailure);case TargetListSucess() when targetListSucess != null:
return targetListSucess(_that.targetList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  targetListLoading,required TResult Function( String messageFailure)  targetListFailure,required TResult Function( List<String> targetList)  targetListSucess,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case TargetListLoading():
return targetListLoading();case TargetListFailure():
return targetListFailure(_that.messageFailure);case TargetListSucess():
return targetListSucess(_that.targetList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  targetListLoading,TResult? Function( String messageFailure)?  targetListFailure,TResult? Function( List<String> targetList)?  targetListSucess,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case TargetListLoading() when targetListLoading != null:
return targetListLoading();case TargetListFailure() when targetListFailure != null:
return targetListFailure(_that.messageFailure);case TargetListSucess() when targetListSucess != null:
return targetListSucess(_that.targetList);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements TargetExersizeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TargetExersizeState.initial()';
}


}




/// @nodoc


class TargetListLoading implements TargetExersizeState {
  const TargetListLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TargetListLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TargetExersizeState.targetListLoading()';
}


}




/// @nodoc


class TargetListFailure implements TargetExersizeState {
  const TargetListFailure(this.messageFailure);
  

 final  String messageFailure;

/// Create a copy of TargetExersizeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TargetListFailureCopyWith<TargetListFailure> get copyWith => _$TargetListFailureCopyWithImpl<TargetListFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TargetListFailure&&(identical(other.messageFailure, messageFailure) || other.messageFailure == messageFailure));
}


@override
int get hashCode => Object.hash(runtimeType,messageFailure);

@override
String toString() {
  return 'TargetExersizeState.targetListFailure(messageFailure: $messageFailure)';
}


}

/// @nodoc
abstract mixin class $TargetListFailureCopyWith<$Res> implements $TargetExersizeStateCopyWith<$Res> {
  factory $TargetListFailureCopyWith(TargetListFailure value, $Res Function(TargetListFailure) _then) = _$TargetListFailureCopyWithImpl;
@useResult
$Res call({
 String messageFailure
});




}
/// @nodoc
class _$TargetListFailureCopyWithImpl<$Res>
    implements $TargetListFailureCopyWith<$Res> {
  _$TargetListFailureCopyWithImpl(this._self, this._then);

  final TargetListFailure _self;
  final $Res Function(TargetListFailure) _then;

/// Create a copy of TargetExersizeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messageFailure = null,}) {
  return _then(TargetListFailure(
null == messageFailure ? _self.messageFailure : messageFailure // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TargetListSucess implements TargetExersizeState {
  const TargetListSucess(final  List<String> targetList): _targetList = targetList;
  

 final  List<String> _targetList;
 List<String> get targetList {
  if (_targetList is EqualUnmodifiableListView) return _targetList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_targetList);
}


/// Create a copy of TargetExersizeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TargetListSucessCopyWith<TargetListSucess> get copyWith => _$TargetListSucessCopyWithImpl<TargetListSucess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TargetListSucess&&const DeepCollectionEquality().equals(other._targetList, _targetList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_targetList));

@override
String toString() {
  return 'TargetExersizeState.targetListSucess(targetList: $targetList)';
}


}

/// @nodoc
abstract mixin class $TargetListSucessCopyWith<$Res> implements $TargetExersizeStateCopyWith<$Res> {
  factory $TargetListSucessCopyWith(TargetListSucess value, $Res Function(TargetListSucess) _then) = _$TargetListSucessCopyWithImpl;
@useResult
$Res call({
 List<String> targetList
});




}
/// @nodoc
class _$TargetListSucessCopyWithImpl<$Res>
    implements $TargetListSucessCopyWith<$Res> {
  _$TargetListSucessCopyWithImpl(this._self, this._then);

  final TargetListSucess _self;
  final $Res Function(TargetListSucess) _then;

/// Create a copy of TargetExersizeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? targetList = null,}) {
  return _then(TargetListSucess(
null == targetList ? _self._targetList : targetList // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
