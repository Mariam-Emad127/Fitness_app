// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_image_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetImageState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetImageState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetImageState()';
}


}

/// @nodoc
class $GetImageStateCopyWith<$Res>  {
$GetImageStateCopyWith(GetImageState _, $Res Function(GetImageState) __);
}


/// Adds pattern-matching-related methods to [GetImageState].
extension GetImageStatePatterns on GetImageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( ImageSucess value)?  imageSucess,TResult Function( ImageFailure value)?  imageFailure,TResult Function( ImageLoading value)?  imageLoading,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ImageSucess() when imageSucess != null:
return imageSucess(_that);case ImageFailure() when imageFailure != null:
return imageFailure(_that);case ImageLoading() when imageLoading != null:
return imageLoading(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( ImageSucess value)  imageSucess,required TResult Function( ImageFailure value)  imageFailure,required TResult Function( ImageLoading value)  imageLoading,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case ImageSucess():
return imageSucess(_that);case ImageFailure():
return imageFailure(_that);case ImageLoading():
return imageLoading(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( ImageSucess value)?  imageSucess,TResult? Function( ImageFailure value)?  imageFailure,TResult? Function( ImageLoading value)?  imageLoading,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ImageSucess() when imageSucess != null:
return imageSucess(_that);case ImageFailure() when imageFailure != null:
return imageFailure(_that);case ImageLoading() when imageLoading != null:
return imageLoading(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( Uint8List url)?  imageSucess,TResult Function( String message)?  imageFailure,TResult Function()?  imageLoading,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ImageSucess() when imageSucess != null:
return imageSucess(_that.url);case ImageFailure() when imageFailure != null:
return imageFailure(_that.message);case ImageLoading() when imageLoading != null:
return imageLoading();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( Uint8List url)  imageSucess,required TResult Function( String message)  imageFailure,required TResult Function()  imageLoading,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case ImageSucess():
return imageSucess(_that.url);case ImageFailure():
return imageFailure(_that.message);case ImageLoading():
return imageLoading();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( Uint8List url)?  imageSucess,TResult? Function( String message)?  imageFailure,TResult? Function()?  imageLoading,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ImageSucess() when imageSucess != null:
return imageSucess(_that.url);case ImageFailure() when imageFailure != null:
return imageFailure(_that.message);case ImageLoading() when imageLoading != null:
return imageLoading();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements GetImageState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetImageState.initial()';
}


}




/// @nodoc


class ImageSucess implements GetImageState {
  const ImageSucess(this.url);
  

 final  Uint8List url;

/// Create a copy of GetImageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageSucessCopyWith<ImageSucess> get copyWith => _$ImageSucessCopyWithImpl<ImageSucess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageSucess&&const DeepCollectionEquality().equals(other.url, url));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(url));

@override
String toString() {
  return 'GetImageState.imageSucess(url: $url)';
}


}

/// @nodoc
abstract mixin class $ImageSucessCopyWith<$Res> implements $GetImageStateCopyWith<$Res> {
  factory $ImageSucessCopyWith(ImageSucess value, $Res Function(ImageSucess) _then) = _$ImageSucessCopyWithImpl;
@useResult
$Res call({
 Uint8List url
});




}
/// @nodoc
class _$ImageSucessCopyWithImpl<$Res>
    implements $ImageSucessCopyWith<$Res> {
  _$ImageSucessCopyWithImpl(this._self, this._then);

  final ImageSucess _self;
  final $Res Function(ImageSucess) _then;

/// Create a copy of GetImageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? url = null,}) {
  return _then(ImageSucess(
null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc


class ImageFailure implements GetImageState {
  const ImageFailure(this.message);
  

 final  String message;

/// Create a copy of GetImageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageFailureCopyWith<ImageFailure> get copyWith => _$ImageFailureCopyWithImpl<ImageFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GetImageState.imageFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $ImageFailureCopyWith<$Res> implements $GetImageStateCopyWith<$Res> {
  factory $ImageFailureCopyWith(ImageFailure value, $Res Function(ImageFailure) _then) = _$ImageFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ImageFailureCopyWithImpl<$Res>
    implements $ImageFailureCopyWith<$Res> {
  _$ImageFailureCopyWithImpl(this._self, this._then);

  final ImageFailure _self;
  final $Res Function(ImageFailure) _then;

/// Create a copy of GetImageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ImageFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ImageLoading implements GetImageState {
  const ImageLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetImageState.imageLoading()';
}


}




// dart format on
