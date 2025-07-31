
// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignUpState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignUpState()';
  }
}

/// @nodoc
class $SignUpStateCopyWith<$Res> {
  $SignUpStateCopyWith(SignUpState _, $Res Function(SignUpState) __);
}

/// @nodoc

class _Initial implements SignUpState {
  const _Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignUpLoading);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignUpSucees);
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

  final String message;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignUpFailuierCopyWith<SignUpFailuier> get copyWith =>
      _$SignUpFailuierCopyWithImpl<SignUpFailuier>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpFailuier &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'SignUpState.signUpFailuier(message: $message)';
  }
}

/// @nodoc
abstract mixin class $SignUpFailuierCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory $SignUpFailuierCopyWith(
          SignUpFailuier value, $Res Function(SignUpFailuier) _then) =
      _$SignUpFailuierCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$SignUpFailuierCopyWithImpl<$Res>
    implements $SignUpFailuierCopyWith<$Res> {
  _$SignUpFailuierCopyWithImpl(this._self, this._then);

  final SignUpFailuier _self;
  final $Res Function(SignUpFailuier) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(SignUpFailuier(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
