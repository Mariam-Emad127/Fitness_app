// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditProfileState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EditProfileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'EditProfileState()';
  }
}

/// @nodoc
class $EditProfileStateCopyWith<$Res> {
  $EditProfileStateCopyWith(
      EditProfileState _, $Res Function(EditProfileState) __);
}

/// Adds pattern-matching-related methods to [EditProfileState].
extension EditProfileStatePatterns on EditProfileState {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditSucsecc value)? editSucsecc,
    TResult Function(EditFailure value)? editFailure,
    TResult Function(EditLoading value)? editLoading,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case EditSucsecc() when editSucsecc != null:
        return editSucsecc(_that);
      case EditFailure() when editFailure != null:
        return editFailure(_that);
      case EditLoading() when editLoading != null:
        return editLoading(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(EditSucsecc value) editSucsecc,
    required TResult Function(EditFailure value) editFailure,
    required TResult Function(EditLoading value) editLoading,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case EditSucsecc():
        return editSucsecc(_that);
      case EditFailure():
        return editFailure(_that);
      case EditLoading():
        return editLoading(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EditSucsecc value)? editSucsecc,
    TResult? Function(EditFailure value)? editFailure,
    TResult? Function(EditLoading value)? editLoading,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case EditSucsecc() when editSucsecc != null:
        return editSucsecc(_that);
      case EditFailure() when editFailure != null:
        return editFailure(_that);
      case EditLoading() when editLoading != null:
        return editLoading(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editSucsecc,
    TResult Function(String message)? editFailure,
    TResult Function()? editLoading,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case EditSucsecc() when editSucsecc != null:
        return editSucsecc();
      case EditFailure() when editFailure != null:
        return editFailure(_that.message);
      case EditLoading() when editLoading != null:
        return editLoading();
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editSucsecc,
    required TResult Function(String message) editFailure,
    required TResult Function() editLoading,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case EditSucsecc():
        return editSucsecc();
      case EditFailure():
        return editFailure(_that.message);
      case EditLoading():
        return editLoading();
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editSucsecc,
    TResult? Function(String message)? editFailure,
    TResult? Function()? editLoading,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case EditSucsecc() when editSucsecc != null:
        return editSucsecc();
      case EditFailure() when editFailure != null:
        return editFailure(_that.message);
      case EditLoading() when editLoading != null:
        return editLoading();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements EditProfileState {
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
    return 'EditProfileState.initial()';
  }
}

/// @nodoc

class EditSucsecc implements EditProfileState {
  const EditSucsecc();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EditSucsecc);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'EditProfileState.editSucsecc()';
  }
}

/// @nodoc

class EditFailure implements EditProfileState {
  const EditFailure(this.message);

  final String message;

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EditFailureCopyWith<EditFailure> get copyWith =>
      _$EditFailureCopyWithImpl<EditFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'EditProfileState.editFailure(message: $message)';
  }
}

/// @nodoc
abstract mixin class $EditFailureCopyWith<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  factory $EditFailureCopyWith(
          EditFailure value, $Res Function(EditFailure) _then) =
      _$EditFailureCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$EditFailureCopyWithImpl<$Res> implements $EditFailureCopyWith<$Res> {
  _$EditFailureCopyWithImpl(this._self, this._then);

  final EditFailure _self;
  final $Res Function(EditFailure) _then;

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(EditFailure(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class EditLoading implements EditProfileState {
  const EditLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EditLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'EditProfileState.editLoading()';
  }
}

// dart format on
