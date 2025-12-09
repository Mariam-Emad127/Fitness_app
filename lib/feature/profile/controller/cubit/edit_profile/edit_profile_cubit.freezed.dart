// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editSucsecc,
    required TResult Function(String message) editFailure,
    required TResult Function() editLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editSucsecc,
    TResult? Function(String message)? editFailure,
    TResult? Function()? editLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editSucsecc,
    TResult Function(String message)? editFailure,
    TResult Function()? editLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(EditSucsecc value) editSucsecc,
    required TResult Function(EditFailure value) editFailure,
    required TResult Function(EditLoading value) editLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EditSucsecc value)? editSucsecc,
    TResult? Function(EditFailure value)? editFailure,
    TResult? Function(EditLoading value)? editLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditSucsecc value)? editSucsecc,
    TResult Function(EditFailure value)? editFailure,
    TResult Function(EditLoading value)? editLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res, EditProfileState>;
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res, $Val extends EditProfileState>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'EditProfileState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editSucsecc,
    required TResult Function(String message) editFailure,
    required TResult Function() editLoading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editSucsecc,
    TResult? Function(String message)? editFailure,
    TResult? Function()? editLoading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editSucsecc,
    TResult Function(String message)? editFailure,
    TResult Function()? editLoading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(EditSucsecc value) editSucsecc,
    required TResult Function(EditFailure value) editFailure,
    required TResult Function(EditLoading value) editLoading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EditSucsecc value)? editSucsecc,
    TResult? Function(EditFailure value)? editFailure,
    TResult? Function(EditLoading value)? editLoading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditSucsecc value)? editSucsecc,
    TResult Function(EditFailure value)? editFailure,
    TResult Function(EditLoading value)? editLoading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EditProfileState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$EditSucseccImplCopyWith<$Res> {
  factory _$$EditSucseccImplCopyWith(
          _$EditSucseccImpl value, $Res Function(_$EditSucseccImpl) then) =
      __$$EditSucseccImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditSucseccImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res, _$EditSucseccImpl>
    implements _$$EditSucseccImplCopyWith<$Res> {
  __$$EditSucseccImplCopyWithImpl(
      _$EditSucseccImpl _value, $Res Function(_$EditSucseccImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EditSucseccImpl implements EditSucsecc {
  const _$EditSucseccImpl();

  @override
  String toString() {
    return 'EditProfileState.editSucsecc()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditSucseccImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editSucsecc,
    required TResult Function(String message) editFailure,
    required TResult Function() editLoading,
  }) {
    return editSucsecc();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editSucsecc,
    TResult? Function(String message)? editFailure,
    TResult? Function()? editLoading,
  }) {
    return editSucsecc?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editSucsecc,
    TResult Function(String message)? editFailure,
    TResult Function()? editLoading,
    required TResult orElse(),
  }) {
    if (editSucsecc != null) {
      return editSucsecc();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(EditSucsecc value) editSucsecc,
    required TResult Function(EditFailure value) editFailure,
    required TResult Function(EditLoading value) editLoading,
  }) {
    return editSucsecc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EditSucsecc value)? editSucsecc,
    TResult? Function(EditFailure value)? editFailure,
    TResult? Function(EditLoading value)? editLoading,
  }) {
    return editSucsecc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditSucsecc value)? editSucsecc,
    TResult Function(EditFailure value)? editFailure,
    TResult Function(EditLoading value)? editLoading,
    required TResult orElse(),
  }) {
    if (editSucsecc != null) {
      return editSucsecc(this);
    }
    return orElse();
  }
}

abstract class EditSucsecc implements EditProfileState {
  const factory EditSucsecc() = _$EditSucseccImpl;
}

/// @nodoc
abstract class _$$EditFailureImplCopyWith<$Res> {
  factory _$$EditFailureImplCopyWith(
          _$EditFailureImpl value, $Res Function(_$EditFailureImpl) then) =
      __$$EditFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$EditFailureImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res, _$EditFailureImpl>
    implements _$$EditFailureImplCopyWith<$Res> {
  __$$EditFailureImplCopyWithImpl(
      _$EditFailureImpl _value, $Res Function(_$EditFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$EditFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditFailureImpl implements EditFailure {
  const _$EditFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'EditProfileState.editFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditFailureImplCopyWith<_$EditFailureImpl> get copyWith =>
      __$$EditFailureImplCopyWithImpl<_$EditFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editSucsecc,
    required TResult Function(String message) editFailure,
    required TResult Function() editLoading,
  }) {
    return editFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editSucsecc,
    TResult? Function(String message)? editFailure,
    TResult? Function()? editLoading,
  }) {
    return editFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editSucsecc,
    TResult Function(String message)? editFailure,
    TResult Function()? editLoading,
    required TResult orElse(),
  }) {
    if (editFailure != null) {
      return editFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(EditSucsecc value) editSucsecc,
    required TResult Function(EditFailure value) editFailure,
    required TResult Function(EditLoading value) editLoading,
  }) {
    return editFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EditSucsecc value)? editSucsecc,
    TResult? Function(EditFailure value)? editFailure,
    TResult? Function(EditLoading value)? editLoading,
  }) {
    return editFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditSucsecc value)? editSucsecc,
    TResult Function(EditFailure value)? editFailure,
    TResult Function(EditLoading value)? editLoading,
    required TResult orElse(),
  }) {
    if (editFailure != null) {
      return editFailure(this);
    }
    return orElse();
  }
}

abstract class EditFailure implements EditProfileState {
  const factory EditFailure(final String message) = _$EditFailureImpl;

  String get message;

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditFailureImplCopyWith<_$EditFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditLoadingImplCopyWith<$Res> {
  factory _$$EditLoadingImplCopyWith(
          _$EditLoadingImpl value, $Res Function(_$EditLoadingImpl) then) =
      __$$EditLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditLoadingImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res, _$EditLoadingImpl>
    implements _$$EditLoadingImplCopyWith<$Res> {
  __$$EditLoadingImplCopyWithImpl(
      _$EditLoadingImpl _value, $Res Function(_$EditLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EditLoadingImpl implements EditLoading {
  const _$EditLoadingImpl();

  @override
  String toString() {
    return 'EditProfileState.editLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editSucsecc,
    required TResult Function(String message) editFailure,
    required TResult Function() editLoading,
  }) {
    return editLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editSucsecc,
    TResult? Function(String message)? editFailure,
    TResult? Function()? editLoading,
  }) {
    return editLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editSucsecc,
    TResult Function(String message)? editFailure,
    TResult Function()? editLoading,
    required TResult orElse(),
  }) {
    if (editLoading != null) {
      return editLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(EditSucsecc value) editSucsecc,
    required TResult Function(EditFailure value) editFailure,
    required TResult Function(EditLoading value) editLoading,
  }) {
    return editLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EditSucsecc value)? editSucsecc,
    TResult? Function(EditFailure value)? editFailure,
    TResult? Function(EditLoading value)? editLoading,
  }) {
    return editLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditSucsecc value)? editSucsecc,
    TResult Function(EditFailure value)? editFailure,
    TResult Function(EditLoading value)? editLoading,
    required TResult orElse(),
  }) {
    if (editLoading != null) {
      return editLoading(this);
    }
    return orElse();
  }
}

abstract class EditLoading implements EditProfileState {
  const factory EditLoading() = _$EditLoadingImpl;
}
