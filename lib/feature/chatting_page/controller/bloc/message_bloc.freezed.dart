// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MessageEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageEvent()';
}


}

/// @nodoc
class $MessageEventCopyWith<$Res>  {
$MessageEventCopyWith(MessageEvent _, $Res Function(MessageEvent) __);
}


/// Adds pattern-matching-related methods to [MessageEvent].
extension MessageEventPatterns on MessageEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements MessageEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageEvent.started()';
}


}




/// @nodoc
mixin _$MessageState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageState()';
}


}

/// @nodoc
class $MessageStateCopyWith<$Res>  {
$MessageStateCopyWith(MessageState _, $Res Function(MessageState) __);
}


/// Adds pattern-matching-related methods to [MessageState].
extension MessageStatePatterns on MessageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( MessageSucess value)?  messageSucess,TResult Function( MessageFailure value)?  messageFailure,TResult Function( MessageLoading value)?  messageLoading,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case MessageSucess() when messageSucess != null:
return messageSucess(_that);case MessageFailure() when messageFailure != null:
return messageFailure(_that);case MessageLoading() when messageLoading != null:
return messageLoading(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( MessageSucess value)  messageSucess,required TResult Function( MessageFailure value)  messageFailure,required TResult Function( MessageLoading value)  messageLoading,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case MessageSucess():
return messageSucess(_that);case MessageFailure():
return messageFailure(_that);case MessageLoading():
return messageLoading(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( MessageSucess value)?  messageSucess,TResult? Function( MessageFailure value)?  messageFailure,TResult? Function( MessageLoading value)?  messageLoading,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case MessageSucess() when messageSucess != null:
return messageSucess(_that);case MessageFailure() when messageFailure != null:
return messageFailure(_that);case MessageLoading() when messageLoading != null:
return messageLoading(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<MessageModel> messageModel)?  messageSucess,TResult Function( String message)?  messageFailure,TResult Function()?  messageLoading,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case MessageSucess() when messageSucess != null:
return messageSucess(_that.messageModel);case MessageFailure() when messageFailure != null:
return messageFailure(_that.message);case MessageLoading() when messageLoading != null:
return messageLoading();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<MessageModel> messageModel)  messageSucess,required TResult Function( String message)  messageFailure,required TResult Function()  messageLoading,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case MessageSucess():
return messageSucess(_that.messageModel);case MessageFailure():
return messageFailure(_that.message);case MessageLoading():
return messageLoading();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<MessageModel> messageModel)?  messageSucess,TResult? Function( String message)?  messageFailure,TResult? Function()?  messageLoading,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case MessageSucess() when messageSucess != null:
return messageSucess(_that.messageModel);case MessageFailure() when messageFailure != null:
return messageFailure(_that.message);case MessageLoading() when messageLoading != null:
return messageLoading();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements MessageState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageState.initial()';
}


}




/// @nodoc


class MessageSucess implements MessageState {
  const MessageSucess(final  List<MessageModel> messageModel): _messageModel = messageModel;
  

 final  List<MessageModel> _messageModel;
 List<MessageModel> get messageModel {
  if (_messageModel is EqualUnmodifiableListView) return _messageModel;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messageModel);
}


/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageSucessCopyWith<MessageSucess> get copyWith => _$MessageSucessCopyWithImpl<MessageSucess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageSucess&&const DeepCollectionEquality().equals(other._messageModel, _messageModel));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messageModel));

@override
String toString() {
  return 'MessageState.messageSucess(messageModel: $messageModel)';
}


}

/// @nodoc
abstract mixin class $MessageSucessCopyWith<$Res> implements $MessageStateCopyWith<$Res> {
  factory $MessageSucessCopyWith(MessageSucess value, $Res Function(MessageSucess) _then) = _$MessageSucessCopyWithImpl;
@useResult
$Res call({
 List<MessageModel> messageModel
});




}
/// @nodoc
class _$MessageSucessCopyWithImpl<$Res>
    implements $MessageSucessCopyWith<$Res> {
  _$MessageSucessCopyWithImpl(this._self, this._then);

  final MessageSucess _self;
  final $Res Function(MessageSucess) _then;

/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messageModel = null,}) {
  return _then(MessageSucess(
null == messageModel ? _self._messageModel : messageModel // ignore: cast_nullable_to_non_nullable
as List<MessageModel>,
  ));
}


}

/// @nodoc


class MessageFailure implements MessageState {
  const MessageFailure(this.message);
  

 final  String message;

/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageFailureCopyWith<MessageFailure> get copyWith => _$MessageFailureCopyWithImpl<MessageFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MessageState.messageFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $MessageFailureCopyWith<$Res> implements $MessageStateCopyWith<$Res> {
  factory $MessageFailureCopyWith(MessageFailure value, $Res Function(MessageFailure) _then) = _$MessageFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$MessageFailureCopyWithImpl<$Res>
    implements $MessageFailureCopyWith<$Res> {
  _$MessageFailureCopyWithImpl(this._self, this._then);

  final MessageFailure _self;
  final $Res Function(MessageFailure) _then;

/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(MessageFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MessageLoading implements MessageState {
  const MessageLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageState.messageLoading()';
}


}




// dart format on
