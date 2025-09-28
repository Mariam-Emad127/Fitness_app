// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exersizes_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExersizesState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ExersizesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ExersizesState()';
  }
}

/// @nodoc
class $ExersizesStateCopyWith<$Res> {
  $ExersizesStateCopyWith(ExersizesState _, $Res Function(ExersizesState) __);
}

/// Adds pattern-matching-related methods to [ExersizesState].
extension ExersizesStatePatterns on ExersizesState {
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
    TResult Function(ExersizeSucess value)? exersizeSucess,
    TResult Function(ExersizeFailure value)? exersizeFailure,
    TResult Function(ExersizeLoading value)? exersizeLoading,
    TResult Function(TargetListSucess value)? targetListSucess,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case ExersizeSucess() when exersizeSucess != null:
        return exersizeSucess(_that);
      case ExersizeFailure() when exersizeFailure != null:
        return exersizeFailure(_that);
      case ExersizeLoading() when exersizeLoading != null:
        return exersizeLoading(_that);
      case TargetListSucess() when targetListSucess != null:
        return targetListSucess(_that);
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
    required TResult Function(ExersizeSucess value) exersizeSucess,
    required TResult Function(ExersizeFailure value) exersizeFailure,
    required TResult Function(ExersizeLoading value) exersizeLoading,
    required TResult Function(TargetListSucess value) targetListSucess,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case ExersizeSucess():
        return exersizeSucess(_that);
      case ExersizeFailure():
        return exersizeFailure(_that);
      case ExersizeLoading():
        return exersizeLoading(_that);
      case TargetListSucess():
        return targetListSucess(_that);
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
    TResult? Function(ExersizeSucess value)? exersizeSucess,
    TResult? Function(ExersizeFailure value)? exersizeFailure,
    TResult? Function(ExersizeLoading value)? exersizeLoading,
    TResult? Function(TargetListSucess value)? targetListSucess,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case ExersizeSucess() when exersizeSucess != null:
        return exersizeSucess(_that);
      case ExersizeFailure() when exersizeFailure != null:
        return exersizeFailure(_that);
      case ExersizeLoading() when exersizeLoading != null:
        return exersizeLoading(_that);
      case TargetListSucess() when targetListSucess != null:
        return targetListSucess(_that);
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
    TResult Function(List<ExersizeModel> exresizeModel)? exersizeSucess,
    TResult Function(String message)? exersizeFailure,
    TResult Function()? exersizeLoading,
    TResult Function(List<String> targetList)? targetListSucess,
<<<<<<< Updated upstream
=======
    TResult Function(Uint8List url)? imageSucess,
>>>>>>> Stashed changes
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case ExersizeSucess() when exersizeSucess != null:
        return exersizeSucess(_that.exresizeModel);
      case ExersizeFailure() when exersizeFailure != null:
        return exersizeFailure(_that.message);
      case ExersizeLoading() when exersizeLoading != null:
        return exersizeLoading();
      case TargetListSucess() when targetListSucess != null:
        return targetListSucess(_that.targetList);
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
    required TResult Function(List<ExersizeModel> exresizeModel) exersizeSucess,
    required TResult Function(String message) exersizeFailure,
    required TResult Function() exersizeLoading,
    required TResult Function(List<String> targetList) targetListSucess,
<<<<<<< Updated upstream
=======
    required TResult Function(Uint8List url) imageSucess,
>>>>>>> Stashed changes
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case ExersizeSucess():
        return exersizeSucess(_that.exresizeModel);
      case ExersizeFailure():
        return exersizeFailure(_that.message);
      case ExersizeLoading():
        return exersizeLoading();
      case TargetListSucess():
        return targetListSucess(_that.targetList);
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
    TResult? Function(List<ExersizeModel> exresizeModel)? exersizeSucess,
    TResult? Function(String message)? exersizeFailure,
    TResult? Function()? exersizeLoading,
    TResult? Function(List<String> targetList)? targetListSucess,
<<<<<<< Updated upstream
=======
    TResult? Function(Uint8List url)? imageSucess,
>>>>>>> Stashed changes
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case ExersizeSucess() when exersizeSucess != null:
        return exersizeSucess(_that.exresizeModel);
      case ExersizeFailure() when exersizeFailure != null:
        return exersizeFailure(_that.message);
      case ExersizeLoading() when exersizeLoading != null:
        return exersizeLoading();
      case TargetListSucess() when targetListSucess != null:
        return targetListSucess(_that.targetList);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements ExersizesState {
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
    return 'ExersizesState.initial()';
  }
}

/// @nodoc

class ExersizeSucess implements ExersizesState {
  const ExersizeSucess(final List<ExersizeModel> exresizeModel)
      : _exresizeModel = exresizeModel;

  final List<ExersizeModel> _exresizeModel;
  List<ExersizeModel> get exresizeModel {
    if (_exresizeModel is EqualUnmodifiableListView) return _exresizeModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exresizeModel);
  }

  /// Create a copy of ExersizesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExersizeSucessCopyWith<ExersizeSucess> get copyWith =>
      _$ExersizeSucessCopyWithImpl<ExersizeSucess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExersizeSucess &&
            const DeepCollectionEquality()
                .equals(other._exresizeModel, _exresizeModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_exresizeModel));

  @override
  String toString() {
    return 'ExersizesState.exersizeSucess(exresizeModel: $exresizeModel)';
  }
}

/// @nodoc
abstract mixin class $ExersizeSucessCopyWith<$Res>
    implements $ExersizesStateCopyWith<$Res> {
  factory $ExersizeSucessCopyWith(
          ExersizeSucess value, $Res Function(ExersizeSucess) _then) =
      _$ExersizeSucessCopyWithImpl;
  @useResult
  $Res call({List<ExersizeModel> exresizeModel});
}

/// @nodoc
class _$ExersizeSucessCopyWithImpl<$Res>
    implements $ExersizeSucessCopyWith<$Res> {
  _$ExersizeSucessCopyWithImpl(this._self, this._then);

  final ExersizeSucess _self;
  final $Res Function(ExersizeSucess) _then;

  /// Create a copy of ExersizesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? exresizeModel = null,
  }) {
    return _then(ExersizeSucess(
      null == exresizeModel
          ? _self._exresizeModel
          : exresizeModel // ignore: cast_nullable_to_non_nullable
              as List<ExersizeModel>,
    ));
  }
}

/// @nodoc

class ExersizeFailure implements ExersizesState {
  const ExersizeFailure(this.message);

  final String message;

  /// Create a copy of ExersizesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExersizeFailureCopyWith<ExersizeFailure> get copyWith =>
      _$ExersizeFailureCopyWithImpl<ExersizeFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExersizeFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ExersizesState.exersizeFailure(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ExersizeFailureCopyWith<$Res>
    implements $ExersizesStateCopyWith<$Res> {
  factory $ExersizeFailureCopyWith(
          ExersizeFailure value, $Res Function(ExersizeFailure) _then) =
      _$ExersizeFailureCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ExersizeFailureCopyWithImpl<$Res>
    implements $ExersizeFailureCopyWith<$Res> {
  _$ExersizeFailureCopyWithImpl(this._self, this._then);

  final ExersizeFailure _self;
  final $Res Function(ExersizeFailure) _then;

  /// Create a copy of ExersizesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(ExersizeFailure(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ExersizeLoading implements ExersizesState {
  const ExersizeLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ExersizeLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ExersizesState.exersizeLoading()';
  }
}

/// @nodoc

class TargetListSucess implements ExersizesState {
  const TargetListSucess(final List<String> targetList)
      : _targetList = targetList;

  final List<String> _targetList;
  List<String> get targetList {
    if (_targetList is EqualUnmodifiableListView) return _targetList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_targetList);
  }

  /// Create a copy of ExersizesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TargetListSucessCopyWith<TargetListSucess> get copyWith =>
      _$TargetListSucessCopyWithImpl<TargetListSucess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TargetListSucess &&
            const DeepCollectionEquality()
                .equals(other._targetList, _targetList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_targetList));

  @override
  String toString() {
    return 'ExersizesState.targetListSucess(targetList: $targetList)';
  }
}

/// @nodoc
abstract mixin class $TargetListSucessCopyWith<$Res>
    implements $ExersizesStateCopyWith<$Res> {
  factory $TargetListSucessCopyWith(
          TargetListSucess value, $Res Function(TargetListSucess) _then) =
      _$TargetListSucessCopyWithImpl;
  @useResult
  $Res call({List<String> targetList});
}

/// @nodoc
class _$TargetListSucessCopyWithImpl<$Res>
    implements $TargetListSucessCopyWith<$Res> {
  _$TargetListSucessCopyWithImpl(this._self, this._then);

  final TargetListSucess _self;
  final $Res Function(TargetListSucess) _then;

  /// Create a copy of ExersizesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? targetList = null,
  }) {
    return _then(TargetListSucess(
      null == targetList
          ? _self._targetList
          : targetList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

<<<<<<< Updated upstream
=======
/// @nodoc

class ImageSucess implements ExersizesState {
  const ImageSucess(this.url);

  final Uint8List url;

  /// Create a copy of ExersizesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ImageSucessCopyWith<ImageSucess> get copyWith =>
      _$ImageSucessCopyWithImpl<ImageSucess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImageSucess &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @override
  String toString() {
    return 'ExersizesState.imageSucess(url: $url)';
  }
}

/// @nodoc
abstract mixin class $ImageSucessCopyWith<$Res>
    implements $ExersizesStateCopyWith<$Res> {
  factory $ImageSucessCopyWith(
          ImageSucess value, $Res Function(ImageSucess) _then) =
      _$ImageSucessCopyWithImpl;
  @useResult
  $Res call({Uint8List url});
}

/// @nodoc
class _$ImageSucessCopyWithImpl<$Res> implements $ImageSucessCopyWith<$Res> {
  _$ImageSucessCopyWithImpl(this._self, this._then);

  final ImageSucess _self;
  final $Res Function(ImageSucess) _then;

  /// Create a copy of ExersizesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = freezed,
  }) {
    return _then(ImageSucess(
      freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

>>>>>>> Stashed changes
// dart format on
