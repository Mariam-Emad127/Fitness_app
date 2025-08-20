// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetUserInfoState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetUserInfoState()';
  }
}

/// @nodoc
class $GetUserInfoStateCopyWith<$Res> {
  $GetUserInfoStateCopyWith(
      GetUserInfoState _, $Res Function(GetUserInfoState) __);
}

/// @nodoc

class _Initial implements GetUserInfoState {
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
    return 'GetUserInfoState.initial()';
  }
}

/// @nodoc

class GetUserInfoSucess implements GetUserInfoState {
  const GetUserInfoSucess(this.user);

  final UserModel user;

  /// Create a copy of GetUserInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetUserInfoSucessCopyWith<GetUserInfoSucess> get copyWith =>
      _$GetUserInfoSucessCopyWithImpl<GetUserInfoSucess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetUserInfoSucess &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'GetUserInfoState.getUserInfoSucess(user: $user)';
  }
}

/// @nodoc
abstract mixin class $GetUserInfoSucessCopyWith<$Res>
    implements $GetUserInfoStateCopyWith<$Res> {
  factory $GetUserInfoSucessCopyWith(
          GetUserInfoSucess value, $Res Function(GetUserInfoSucess) _then) =
      _$GetUserInfoSucessCopyWithImpl;
  @useResult
  $Res call({UserModel user});
}

/// @nodoc
class _$GetUserInfoSucessCopyWithImpl<$Res>
    implements $GetUserInfoSucessCopyWith<$Res> {
  _$GetUserInfoSucessCopyWithImpl(this._self, this._then);

  final GetUserInfoSucess _self;
  final $Res Function(GetUserInfoSucess) _then;

  /// Create a copy of GetUserInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
  }) {
    return _then(GetUserInfoSucess(
      null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class GetUserInfoFailure implements GetUserInfoState {
  const GetUserInfoFailure(this.message);

  final String message;

  /// Create a copy of GetUserInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetUserInfoFailureCopyWith<GetUserInfoFailure> get copyWith =>
      _$GetUserInfoFailureCopyWithImpl<GetUserInfoFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetUserInfoFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'GetUserInfoState.getUserInfoFailure(message: $message)';
  }
}

/// @nodoc
abstract mixin class $GetUserInfoFailureCopyWith<$Res>
    implements $GetUserInfoStateCopyWith<$Res> {
  factory $GetUserInfoFailureCopyWith(
          GetUserInfoFailure value, $Res Function(GetUserInfoFailure) _then) =
      _$GetUserInfoFailureCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$GetUserInfoFailureCopyWithImpl<$Res>
    implements $GetUserInfoFailureCopyWith<$Res> {
  _$GetUserInfoFailureCopyWithImpl(this._self, this._then);

  final GetUserInfoFailure _self;
  final $Res Function(GetUserInfoFailure) _then;

  /// Create a copy of GetUserInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(GetUserInfoFailure(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class GetUserInfoLoading implements GetUserInfoState {
  const GetUserInfoLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetUserInfoLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetUserInfoState.getUserInfoLoading()';
  }
}

// dart format on
