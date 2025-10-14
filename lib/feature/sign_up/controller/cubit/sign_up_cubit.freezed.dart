// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState()';
}


}

/// @nodoc
class $SignUpStateCopyWith<$Res>  {
$SignUpStateCopyWith(SignUpState _, $Res Function(SignUpState) __);
}


/// Adds pattern-matching-related methods to [SignUpState].
extension SignUpStatePatterns on SignUpState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( SignUpLoading value)?  signUpLoading,TResult Function( SignUpSucees value)?  signUpSucees,TResult Function( SignUpFailuier value)?  signUpFailuier,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SignUpLoading() when signUpLoading != null:
return signUpLoading(_that);case SignUpSucees() when signUpSucees != null:
return signUpSucees(_that);case SignUpFailuier() when signUpFailuier != null:
return signUpFailuier(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( SignUpLoading value)  signUpLoading,required TResult Function( SignUpSucees value)  signUpSucees,required TResult Function( SignUpFailuier value)  signUpFailuier,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SignUpLoading():
return signUpLoading(_that);case SignUpSucees():
return signUpSucees(_that);case SignUpFailuier():
return signUpFailuier(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( SignUpLoading value)?  signUpLoading,TResult? Function( SignUpSucees value)?  signUpSucees,TResult? Function( SignUpFailuier value)?  signUpFailuier,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SignUpLoading() when signUpLoading != null:
return signUpLoading(_that);case SignUpSucees() when signUpSucees != null:
return signUpSucees(_that);case SignUpFailuier() when signUpFailuier != null:
return signUpFailuier(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  signUpLoading,TResult Function()?  signUpSucees,TResult Function( String message)?  signUpFailuier,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SignUpLoading() when signUpLoading != null:
return signUpLoading();case SignUpSucees() when signUpSucees != null:
return signUpSucees();case SignUpFailuier() when signUpFailuier != null:
return signUpFailuier(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  signUpLoading,required TResult Function()  signUpSucees,required TResult Function( String message)  signUpFailuier,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SignUpLoading():
return signUpLoading();case SignUpSucees():
return signUpSucees();case SignUpFailuier():
return signUpFailuier(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  signUpLoading,TResult? Function()?  signUpSucees,TResult? Function( String message)?  signUpFailuier,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SignUpLoading() when signUpLoading != null:
return signUpLoading();case SignUpSucees() when signUpSucees != null:
return signUpSucees();case SignUpFailuier() when signUpFailuier != null:
return signUpFailuier(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements SignUpState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState.initial()';
}


}




/// @nodoc


class SignUpLoading implements SignUpState {
  const SignUpLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState.signUpLoading()';
}


}




/// @nodoc


class SignUpSucees implements SignUpState {
  const SignUpSucees();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpSucees);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState.signUpSucees()';
}


}




/// @nodoc


class SignUpFailuier implements SignUpState {
  const SignUpFailuier(this.message);
  

 final  String message;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpFailuierCopyWith<SignUpFailuier> get copyWith => _$SignUpFailuierCopyWithImpl<SignUpFailuier>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpFailuier&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SignUpState.signUpFailuier(message: $message)';
}


}

/// @nodoc
abstract mixin class $SignUpFailuierCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory $SignUpFailuierCopyWith(SignUpFailuier value, $Res Function(SignUpFailuier) _then) = _$SignUpFailuierCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SignUpFailuierCopyWithImpl<$Res>
    implements $SignUpFailuierCopyWith<$Res> {
  _$SignUpFailuierCopyWithImpl(this._self, this._then);

  final SignUpFailuier _self;
  final $Res Function(SignUpFailuier) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(SignUpFailuier(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
