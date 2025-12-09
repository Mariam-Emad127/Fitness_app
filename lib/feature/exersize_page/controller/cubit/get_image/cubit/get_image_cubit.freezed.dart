// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_image_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetImageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Uint8List url) imageSucess,
    required TResult Function(String message) imageFailure,
    required TResult Function() imageLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Uint8List url)? imageSucess,
    TResult? Function(String message)? imageFailure,
    TResult? Function()? imageLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Uint8List url)? imageSucess,
    TResult Function(String message)? imageFailure,
    TResult Function()? imageLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ImageSucess value) imageSucess,
    required TResult Function(ImageFailure value) imageFailure,
    required TResult Function(ImageLoading value) imageLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ImageSucess value)? imageSucess,
    TResult? Function(ImageFailure value)? imageFailure,
    TResult? Function(ImageLoading value)? imageLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ImageSucess value)? imageSucess,
    TResult Function(ImageFailure value)? imageFailure,
    TResult Function(ImageLoading value)? imageLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetImageStateCopyWith<$Res> {
  factory $GetImageStateCopyWith(
          GetImageState value, $Res Function(GetImageState) then) =
      _$GetImageStateCopyWithImpl<$Res, GetImageState>;
}

/// @nodoc
class _$GetImageStateCopyWithImpl<$Res, $Val extends GetImageState>
    implements $GetImageStateCopyWith<$Res> {
  _$GetImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetImageState
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
    extends _$GetImageStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetImageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'GetImageState.initial()';
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
    required TResult Function(Uint8List url) imageSucess,
    required TResult Function(String message) imageFailure,
    required TResult Function() imageLoading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Uint8List url)? imageSucess,
    TResult? Function(String message)? imageFailure,
    TResult? Function()? imageLoading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Uint8List url)? imageSucess,
    TResult Function(String message)? imageFailure,
    TResult Function()? imageLoading,
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
    required TResult Function(ImageSucess value) imageSucess,
    required TResult Function(ImageFailure value) imageFailure,
    required TResult Function(ImageLoading value) imageLoading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ImageSucess value)? imageSucess,
    TResult? Function(ImageFailure value)? imageFailure,
    TResult? Function(ImageLoading value)? imageLoading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ImageSucess value)? imageSucess,
    TResult Function(ImageFailure value)? imageFailure,
    TResult Function(ImageLoading value)? imageLoading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GetImageState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ImageSucessImplCopyWith<$Res> {
  factory _$$ImageSucessImplCopyWith(
          _$ImageSucessImpl value, $Res Function(_$ImageSucessImpl) then) =
      __$$ImageSucessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List url});
}

/// @nodoc
class __$$ImageSucessImplCopyWithImpl<$Res>
    extends _$GetImageStateCopyWithImpl<$Res, _$ImageSucessImpl>
    implements _$$ImageSucessImplCopyWith<$Res> {
  __$$ImageSucessImplCopyWithImpl(
      _$ImageSucessImpl _value, $Res Function(_$ImageSucessImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetImageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$ImageSucessImpl(
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$ImageSucessImpl implements ImageSucess {
  const _$ImageSucessImpl(this.url);

  @override
  final Uint8List url;

  @override
  String toString() {
    return 'GetImageState.imageSucess(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageSucessImpl &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  /// Create a copy of GetImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageSucessImplCopyWith<_$ImageSucessImpl> get copyWith =>
      __$$ImageSucessImplCopyWithImpl<_$ImageSucessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Uint8List url) imageSucess,
    required TResult Function(String message) imageFailure,
    required TResult Function() imageLoading,
  }) {
    return imageSucess(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Uint8List url)? imageSucess,
    TResult? Function(String message)? imageFailure,
    TResult? Function()? imageLoading,
  }) {
    return imageSucess?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Uint8List url)? imageSucess,
    TResult Function(String message)? imageFailure,
    TResult Function()? imageLoading,
    required TResult orElse(),
  }) {
    if (imageSucess != null) {
      return imageSucess(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ImageSucess value) imageSucess,
    required TResult Function(ImageFailure value) imageFailure,
    required TResult Function(ImageLoading value) imageLoading,
  }) {
    return imageSucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ImageSucess value)? imageSucess,
    TResult? Function(ImageFailure value)? imageFailure,
    TResult? Function(ImageLoading value)? imageLoading,
  }) {
    return imageSucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ImageSucess value)? imageSucess,
    TResult Function(ImageFailure value)? imageFailure,
    TResult Function(ImageLoading value)? imageLoading,
    required TResult orElse(),
  }) {
    if (imageSucess != null) {
      return imageSucess(this);
    }
    return orElse();
  }
}

abstract class ImageSucess implements GetImageState {
  const factory ImageSucess(final Uint8List url) = _$ImageSucessImpl;

  Uint8List get url;

  /// Create a copy of GetImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageSucessImplCopyWith<_$ImageSucessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageFailureImplCopyWith<$Res> {
  factory _$$ImageFailureImplCopyWith(
          _$ImageFailureImpl value, $Res Function(_$ImageFailureImpl) then) =
      __$$ImageFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ImageFailureImplCopyWithImpl<$Res>
    extends _$GetImageStateCopyWithImpl<$Res, _$ImageFailureImpl>
    implements _$$ImageFailureImplCopyWith<$Res> {
  __$$ImageFailureImplCopyWithImpl(
      _$ImageFailureImpl _value, $Res Function(_$ImageFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetImageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ImageFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImageFailureImpl implements ImageFailure {
  const _$ImageFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'GetImageState.imageFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of GetImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageFailureImplCopyWith<_$ImageFailureImpl> get copyWith =>
      __$$ImageFailureImplCopyWithImpl<_$ImageFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Uint8List url) imageSucess,
    required TResult Function(String message) imageFailure,
    required TResult Function() imageLoading,
  }) {
    return imageFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Uint8List url)? imageSucess,
    TResult? Function(String message)? imageFailure,
    TResult? Function()? imageLoading,
  }) {
    return imageFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Uint8List url)? imageSucess,
    TResult Function(String message)? imageFailure,
    TResult Function()? imageLoading,
    required TResult orElse(),
  }) {
    if (imageFailure != null) {
      return imageFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ImageSucess value) imageSucess,
    required TResult Function(ImageFailure value) imageFailure,
    required TResult Function(ImageLoading value) imageLoading,
  }) {
    return imageFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ImageSucess value)? imageSucess,
    TResult? Function(ImageFailure value)? imageFailure,
    TResult? Function(ImageLoading value)? imageLoading,
  }) {
    return imageFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ImageSucess value)? imageSucess,
    TResult Function(ImageFailure value)? imageFailure,
    TResult Function(ImageLoading value)? imageLoading,
    required TResult orElse(),
  }) {
    if (imageFailure != null) {
      return imageFailure(this);
    }
    return orElse();
  }
}

abstract class ImageFailure implements GetImageState {
  const factory ImageFailure(final String message) = _$ImageFailureImpl;

  String get message;

  /// Create a copy of GetImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageFailureImplCopyWith<_$ImageFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageLoadingImplCopyWith<$Res> {
  factory _$$ImageLoadingImplCopyWith(
          _$ImageLoadingImpl value, $Res Function(_$ImageLoadingImpl) then) =
      __$$ImageLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ImageLoadingImplCopyWithImpl<$Res>
    extends _$GetImageStateCopyWithImpl<$Res, _$ImageLoadingImpl>
    implements _$$ImageLoadingImplCopyWith<$Res> {
  __$$ImageLoadingImplCopyWithImpl(
      _$ImageLoadingImpl _value, $Res Function(_$ImageLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetImageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ImageLoadingImpl implements ImageLoading {
  const _$ImageLoadingImpl();

  @override
  String toString() {
    return 'GetImageState.imageLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ImageLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Uint8List url) imageSucess,
    required TResult Function(String message) imageFailure,
    required TResult Function() imageLoading,
  }) {
    return imageLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Uint8List url)? imageSucess,
    TResult? Function(String message)? imageFailure,
    TResult? Function()? imageLoading,
  }) {
    return imageLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Uint8List url)? imageSucess,
    TResult Function(String message)? imageFailure,
    TResult Function()? imageLoading,
    required TResult orElse(),
  }) {
    if (imageLoading != null) {
      return imageLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ImageSucess value) imageSucess,
    required TResult Function(ImageFailure value) imageFailure,
    required TResult Function(ImageLoading value) imageLoading,
  }) {
    return imageLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ImageSucess value)? imageSucess,
    TResult? Function(ImageFailure value)? imageFailure,
    TResult? Function(ImageLoading value)? imageLoading,
  }) {
    return imageLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ImageSucess value)? imageSucess,
    TResult Function(ImageFailure value)? imageFailure,
    TResult Function(ImageLoading value)? imageLoading,
    required TResult orElse(),
  }) {
    if (imageLoading != null) {
      return imageLoading(this);
    }
    return orElse();
  }
}

abstract class ImageLoading implements GetImageState {
  const factory ImageLoading() = _$ImageLoadingImpl;
}
