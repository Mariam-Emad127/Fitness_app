// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_info_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetUserInfoState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUserInfoState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetUserInfoState()';
}


}

/// @nodoc
class $GetUserInfoStateCopyWith<$Res>  {
$GetUserInfoStateCopyWith(GetUserInfoState _, $Res Function(GetUserInfoState) __);
}


/// Adds pattern-matching-related methods to [GetUserInfoState].
extension GetUserInfoStatePatterns on GetUserInfoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( GetUserInfoSucess value)?  getUserInfoSucess,TResult Function( GetUserInfoFailure value)?  getUserInfoFailure,TResult Function( GetUserInfoLoading value)?  getUserInfoLoading,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetUserInfoSucess() when getUserInfoSucess != null:
return getUserInfoSucess(_that);case GetUserInfoFailure() when getUserInfoFailure != null:
return getUserInfoFailure(_that);case GetUserInfoLoading() when getUserInfoLoading != null:
return getUserInfoLoading(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( GetUserInfoSucess value)  getUserInfoSucess,required TResult Function( GetUserInfoFailure value)  getUserInfoFailure,required TResult Function( GetUserInfoLoading value)  getUserInfoLoading,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case GetUserInfoSucess():
return getUserInfoSucess(_that);case GetUserInfoFailure():
return getUserInfoFailure(_that);case GetUserInfoLoading():
return getUserInfoLoading(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( GetUserInfoSucess value)?  getUserInfoSucess,TResult? Function( GetUserInfoFailure value)?  getUserInfoFailure,TResult? Function( GetUserInfoLoading value)?  getUserInfoLoading,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetUserInfoSucess() when getUserInfoSucess != null:
return getUserInfoSucess(_that);case GetUserInfoFailure() when getUserInfoFailure != null:
return getUserInfoFailure(_that);case GetUserInfoLoading() when getUserInfoLoading != null:
return getUserInfoLoading(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( UserModel user)?  getUserInfoSucess,TResult Function( String message)?  getUserInfoFailure,TResult Function()?  getUserInfoLoading,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetUserInfoSucess() when getUserInfoSucess != null:
return getUserInfoSucess(_that.user);case GetUserInfoFailure() when getUserInfoFailure != null:
return getUserInfoFailure(_that.message);case GetUserInfoLoading() when getUserInfoLoading != null:
return getUserInfoLoading();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( UserModel user)  getUserInfoSucess,required TResult Function( String message)  getUserInfoFailure,required TResult Function()  getUserInfoLoading,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case GetUserInfoSucess():
return getUserInfoSucess(_that.user);case GetUserInfoFailure():
return getUserInfoFailure(_that.message);case GetUserInfoLoading():
return getUserInfoLoading();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( UserModel user)?  getUserInfoSucess,TResult? Function( String message)?  getUserInfoFailure,TResult? Function()?  getUserInfoLoading,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetUserInfoSucess() when getUserInfoSucess != null:
return getUserInfoSucess(_that.user);case GetUserInfoFailure() when getUserInfoFailure != null:
return getUserInfoFailure(_that.message);case GetUserInfoLoading() when getUserInfoLoading != null:
return getUserInfoLoading();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements GetUserInfoState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetUserInfoState.initial()';
}


}




/// @nodoc


class GetUserInfoSucess implements GetUserInfoState {
  const GetUserInfoSucess(this.user);
  

 final  UserModel user;

/// Create a copy of GetUserInfoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetUserInfoSucessCopyWith<GetUserInfoSucess> get copyWith => _$GetUserInfoSucessCopyWithImpl<GetUserInfoSucess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUserInfoSucess&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'GetUserInfoState.getUserInfoSucess(user: $user)';
}


}

/// @nodoc
abstract mixin class $GetUserInfoSucessCopyWith<$Res> implements $GetUserInfoStateCopyWith<$Res> {
  factory $GetUserInfoSucessCopyWith(GetUserInfoSucess value, $Res Function(GetUserInfoSucess) _then) = _$GetUserInfoSucessCopyWithImpl;
@useResult
$Res call({
 UserModel user
});




}
/// @nodoc
class _$GetUserInfoSucessCopyWithImpl<$Res>
    implements $GetUserInfoSucessCopyWith<$Res> {
  _$GetUserInfoSucessCopyWithImpl(this._self, this._then);

  final GetUserInfoSucess _self;
  final $Res Function(GetUserInfoSucess) _then;

/// Create a copy of GetUserInfoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(GetUserInfoSucess(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,
  ));
}


}

/// @nodoc


class GetUserInfoFailure implements GetUserInfoState {
  const GetUserInfoFailure(this.message);
  

 final  String message;

/// Create a copy of GetUserInfoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetUserInfoFailureCopyWith<GetUserInfoFailure> get copyWith => _$GetUserInfoFailureCopyWithImpl<GetUserInfoFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUserInfoFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GetUserInfoState.getUserInfoFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $GetUserInfoFailureCopyWith<$Res> implements $GetUserInfoStateCopyWith<$Res> {
  factory $GetUserInfoFailureCopyWith(GetUserInfoFailure value, $Res Function(GetUserInfoFailure) _then) = _$GetUserInfoFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$GetUserInfoFailureCopyWithImpl<$Res>
    implements $GetUserInfoFailureCopyWith<$Res> {
  _$GetUserInfoFailureCopyWithImpl(this._self, this._then);

  final GetUserInfoFailure _self;
  final $Res Function(GetUserInfoFailure) _then;

/// Create a copy of GetUserInfoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(GetUserInfoFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetUserInfoLoading implements GetUserInfoState {
  const GetUserInfoLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUserInfoLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetUserInfoState.getUserInfoLoading()';
}


}




// dart format on
