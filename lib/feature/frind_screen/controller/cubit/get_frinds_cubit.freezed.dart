// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_frinds_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetFrindsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetFrindsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetFrindsState()';
}


}

/// @nodoc
class $GetFrindsStateCopyWith<$Res>  {
$GetFrindsStateCopyWith(GetFrindsState _, $Res Function(GetFrindsState) __);
}


/// Adds pattern-matching-related methods to [GetFrindsState].
extension GetFrindsStatePatterns on GetFrindsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( GetFrindsLoading value)?  getFrindsLoading,TResult Function( GetFrindsFailure value)?  getFrindsFailure,TResult Function( GetFrindSucess value)?  getFrindSucess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetFrindsLoading() when getFrindsLoading != null:
return getFrindsLoading(_that);case GetFrindsFailure() when getFrindsFailure != null:
return getFrindsFailure(_that);case GetFrindSucess() when getFrindSucess != null:
return getFrindSucess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( GetFrindsLoading value)  getFrindsLoading,required TResult Function( GetFrindsFailure value)  getFrindsFailure,required TResult Function( GetFrindSucess value)  getFrindSucess,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case GetFrindsLoading():
return getFrindsLoading(_that);case GetFrindsFailure():
return getFrindsFailure(_that);case GetFrindSucess():
return getFrindSucess(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( GetFrindsLoading value)?  getFrindsLoading,TResult? Function( GetFrindsFailure value)?  getFrindsFailure,TResult? Function( GetFrindSucess value)?  getFrindSucess,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetFrindsLoading() when getFrindsLoading != null:
return getFrindsLoading(_that);case GetFrindsFailure() when getFrindsFailure != null:
return getFrindsFailure(_that);case GetFrindSucess() when getFrindSucess != null:
return getFrindSucess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  getFrindsLoading,TResult Function( String message)?  getFrindsFailure,TResult Function( List<UserModel> users)?  getFrindSucess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetFrindsLoading() when getFrindsLoading != null:
return getFrindsLoading();case GetFrindsFailure() when getFrindsFailure != null:
return getFrindsFailure(_that.message);case GetFrindSucess() when getFrindSucess != null:
return getFrindSucess(_that.users);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  getFrindsLoading,required TResult Function( String message)  getFrindsFailure,required TResult Function( List<UserModel> users)  getFrindSucess,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case GetFrindsLoading():
return getFrindsLoading();case GetFrindsFailure():
return getFrindsFailure(_that.message);case GetFrindSucess():
return getFrindSucess(_that.users);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  getFrindsLoading,TResult? Function( String message)?  getFrindsFailure,TResult? Function( List<UserModel> users)?  getFrindSucess,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetFrindsLoading() when getFrindsLoading != null:
return getFrindsLoading();case GetFrindsFailure() when getFrindsFailure != null:
return getFrindsFailure(_that.message);case GetFrindSucess() when getFrindSucess != null:
return getFrindSucess(_that.users);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements GetFrindsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetFrindsState.initial()';
}


}




/// @nodoc


class GetFrindsLoading implements GetFrindsState {
  const GetFrindsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetFrindsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetFrindsState.getFrindsLoading()';
}


}




/// @nodoc


class GetFrindsFailure implements GetFrindsState {
  const GetFrindsFailure(this.message);
  

 final  String message;

/// Create a copy of GetFrindsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetFrindsFailureCopyWith<GetFrindsFailure> get copyWith => _$GetFrindsFailureCopyWithImpl<GetFrindsFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetFrindsFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GetFrindsState.getFrindsFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $GetFrindsFailureCopyWith<$Res> implements $GetFrindsStateCopyWith<$Res> {
  factory $GetFrindsFailureCopyWith(GetFrindsFailure value, $Res Function(GetFrindsFailure) _then) = _$GetFrindsFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$GetFrindsFailureCopyWithImpl<$Res>
    implements $GetFrindsFailureCopyWith<$Res> {
  _$GetFrindsFailureCopyWithImpl(this._self, this._then);

  final GetFrindsFailure _self;
  final $Res Function(GetFrindsFailure) _then;

/// Create a copy of GetFrindsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(GetFrindsFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetFrindSucess implements GetFrindsState {
  const GetFrindSucess(final  List<UserModel> users): _users = users;
  

 final  List<UserModel> _users;
 List<UserModel> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}


/// Create a copy of GetFrindsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetFrindSucessCopyWith<GetFrindSucess> get copyWith => _$GetFrindSucessCopyWithImpl<GetFrindSucess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetFrindSucess&&const DeepCollectionEquality().equals(other._users, _users));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users));

@override
String toString() {
  return 'GetFrindsState.getFrindSucess(users: $users)';
}


}

/// @nodoc
abstract mixin class $GetFrindSucessCopyWith<$Res> implements $GetFrindsStateCopyWith<$Res> {
  factory $GetFrindSucessCopyWith(GetFrindSucess value, $Res Function(GetFrindSucess) _then) = _$GetFrindSucessCopyWithImpl;
@useResult
$Res call({
 List<UserModel> users
});




}
/// @nodoc
class _$GetFrindSucessCopyWithImpl<$Res>
    implements $GetFrindSucessCopyWith<$Res> {
  _$GetFrindSucessCopyWithImpl(this._self, this._then);

  final GetFrindSucess _self;
  final $Res Function(GetFrindSucess) _then;

/// Create a copy of GetFrindsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? users = null,}) {
  return _then(GetFrindSucess(
null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<UserModel>,
  ));
}


}

// dart format on
