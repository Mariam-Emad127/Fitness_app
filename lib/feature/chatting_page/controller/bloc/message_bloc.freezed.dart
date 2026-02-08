// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MessageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String sender, String message, String reciver)
        sendMessageEvent,
    required TResult Function() initSocket,
    required TResult Function(MessageModel message_model) newMessage,
    required TResult Function(String reciver) readMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String sender, String message, String reciver)?
        sendMessageEvent,
    TResult? Function()? initSocket,
    TResult? Function(MessageModel message_model)? newMessage,
    TResult? Function(String reciver)? readMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String sender, String message, String reciver)?
        sendMessageEvent,
    TResult Function()? initSocket,
    TResult Function(MessageModel message_model)? newMessage,
    TResult Function(String reciver)? readMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SendMessageEvent value) sendMessageEvent,
    required TResult Function(InitSocket value) initSocket,
    required TResult Function(NewMessage value) newMessage,
    required TResult Function(ReadMessage value) readMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SendMessageEvent value)? sendMessageEvent,
    TResult? Function(InitSocket value)? initSocket,
    TResult? Function(NewMessage value)? newMessage,
    TResult? Function(ReadMessage value)? readMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SendMessageEvent value)? sendMessageEvent,
    TResult Function(InitSocket value)? initSocket,
    TResult Function(NewMessage value)? newMessage,
    TResult Function(ReadMessage value)? readMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageEventCopyWith<$Res> {
  factory $MessageEventCopyWith(
          MessageEvent value, $Res Function(MessageEvent) then) =
      _$MessageEventCopyWithImpl<$Res, MessageEvent>;
}

/// @nodoc
class _$MessageEventCopyWithImpl<$Res, $Val extends MessageEvent>
    implements $MessageEventCopyWith<$Res> {
  _$MessageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'MessageEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String sender, String message, String reciver)
        sendMessageEvent,
    required TResult Function() initSocket,
    required TResult Function(MessageModel message_model) newMessage,
    required TResult Function(String reciver) readMessage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String sender, String message, String reciver)?
        sendMessageEvent,
    TResult? Function()? initSocket,
    TResult? Function(MessageModel message_model)? newMessage,
    TResult? Function(String reciver)? readMessage,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String sender, String message, String reciver)?
        sendMessageEvent,
    TResult Function()? initSocket,
    TResult Function(MessageModel message_model)? newMessage,
    TResult Function(String reciver)? readMessage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SendMessageEvent value) sendMessageEvent,
    required TResult Function(InitSocket value) initSocket,
    required TResult Function(NewMessage value) newMessage,
    required TResult Function(ReadMessage value) readMessage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SendMessageEvent value)? sendMessageEvent,
    TResult? Function(InitSocket value)? initSocket,
    TResult? Function(NewMessage value)? newMessage,
    TResult? Function(ReadMessage value)? readMessage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SendMessageEvent value)? sendMessageEvent,
    TResult Function(InitSocket value)? initSocket,
    TResult Function(NewMessage value)? newMessage,
    TResult Function(ReadMessage value)? readMessage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MessageEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SendMessageEventImplCopyWith<$Res> {
  factory _$$SendMessageEventImplCopyWith(_$SendMessageEventImpl value,
          $Res Function(_$SendMessageEventImpl) then) =
      __$$SendMessageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String sender, String message, String reciver});
}

/// @nodoc
class __$$SendMessageEventImplCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res, _$SendMessageEventImpl>
    implements _$$SendMessageEventImplCopyWith<$Res> {
  __$$SendMessageEventImplCopyWithImpl(_$SendMessageEventImpl _value,
      $Res Function(_$SendMessageEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sender = null,
    Object? message = null,
    Object? reciver = null,
  }) {
    return _then(_$SendMessageEventImpl(
      null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == reciver
          ? _value.reciver
          : reciver // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendMessageEventImpl implements SendMessageEvent {
  const _$SendMessageEventImpl(this.sender, this.message, this.reciver);

  @override
  final String sender;
  @override
  final String message;
  @override
  final String reciver;

  @override
  String toString() {
    return 'MessageEvent.sendMessageEvent(sender: $sender, message: $message, reciver: $reciver)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageEventImpl &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.reciver, reciver) || other.reciver == reciver));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sender, message, reciver);

  /// Create a copy of MessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageEventImplCopyWith<_$SendMessageEventImpl> get copyWith =>
      __$$SendMessageEventImplCopyWithImpl<_$SendMessageEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String sender, String message, String reciver)
        sendMessageEvent,
    required TResult Function() initSocket,
    required TResult Function(MessageModel message_model) newMessage,
    required TResult Function(String reciver) readMessage,
  }) {
    return sendMessageEvent(sender, message, reciver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String sender, String message, String reciver)?
        sendMessageEvent,
    TResult? Function()? initSocket,
    TResult? Function(MessageModel message_model)? newMessage,
    TResult? Function(String reciver)? readMessage,
  }) {
    return sendMessageEvent?.call(sender, message, reciver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String sender, String message, String reciver)?
        sendMessageEvent,
    TResult Function()? initSocket,
    TResult Function(MessageModel message_model)? newMessage,
    TResult Function(String reciver)? readMessage,
    required TResult orElse(),
  }) {
    if (sendMessageEvent != null) {
      return sendMessageEvent(sender, message, reciver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SendMessageEvent value) sendMessageEvent,
    required TResult Function(InitSocket value) initSocket,
    required TResult Function(NewMessage value) newMessage,
    required TResult Function(ReadMessage value) readMessage,
  }) {
    return sendMessageEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SendMessageEvent value)? sendMessageEvent,
    TResult? Function(InitSocket value)? initSocket,
    TResult? Function(NewMessage value)? newMessage,
    TResult? Function(ReadMessage value)? readMessage,
  }) {
    return sendMessageEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SendMessageEvent value)? sendMessageEvent,
    TResult Function(InitSocket value)? initSocket,
    TResult Function(NewMessage value)? newMessage,
    TResult Function(ReadMessage value)? readMessage,
    required TResult orElse(),
  }) {
    if (sendMessageEvent != null) {
      return sendMessageEvent(this);
    }
    return orElse();
  }
}

abstract class SendMessageEvent implements MessageEvent {
  const factory SendMessageEvent(
          final String sender, final String message, final String reciver) =
      _$SendMessageEventImpl;

  String get sender;
  String get message;
  String get reciver;

  /// Create a copy of MessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageEventImplCopyWith<_$SendMessageEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitSocketImplCopyWith<$Res> {
  factory _$$InitSocketImplCopyWith(
          _$InitSocketImpl value, $Res Function(_$InitSocketImpl) then) =
      __$$InitSocketImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitSocketImplCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res, _$InitSocketImpl>
    implements _$$InitSocketImplCopyWith<$Res> {
  __$$InitSocketImplCopyWithImpl(
      _$InitSocketImpl _value, $Res Function(_$InitSocketImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitSocketImpl implements InitSocket {
  const _$InitSocketImpl();

  @override
  String toString() {
    return 'MessageEvent.initSocket()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitSocketImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String sender, String message, String reciver)
        sendMessageEvent,
    required TResult Function() initSocket,
    required TResult Function(MessageModel message_model) newMessage,
    required TResult Function(String reciver) readMessage,
  }) {
    return initSocket();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String sender, String message, String reciver)?
        sendMessageEvent,
    TResult? Function()? initSocket,
    TResult? Function(MessageModel message_model)? newMessage,
    TResult? Function(String reciver)? readMessage,
  }) {
    return initSocket?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String sender, String message, String reciver)?
        sendMessageEvent,
    TResult Function()? initSocket,
    TResult Function(MessageModel message_model)? newMessage,
    TResult Function(String reciver)? readMessage,
    required TResult orElse(),
  }) {
    if (initSocket != null) {
      return initSocket();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SendMessageEvent value) sendMessageEvent,
    required TResult Function(InitSocket value) initSocket,
    required TResult Function(NewMessage value) newMessage,
    required TResult Function(ReadMessage value) readMessage,
  }) {
    return initSocket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SendMessageEvent value)? sendMessageEvent,
    TResult? Function(InitSocket value)? initSocket,
    TResult? Function(NewMessage value)? newMessage,
    TResult? Function(ReadMessage value)? readMessage,
  }) {
    return initSocket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SendMessageEvent value)? sendMessageEvent,
    TResult Function(InitSocket value)? initSocket,
    TResult Function(NewMessage value)? newMessage,
    TResult Function(ReadMessage value)? readMessage,
    required TResult orElse(),
  }) {
    if (initSocket != null) {
      return initSocket(this);
    }
    return orElse();
  }
}

abstract class InitSocket implements MessageEvent {
  const factory InitSocket() = _$InitSocketImpl;
}

/// @nodoc
abstract class _$$NewMessageImplCopyWith<$Res> {
  factory _$$NewMessageImplCopyWith(
          _$NewMessageImpl value, $Res Function(_$NewMessageImpl) then) =
      __$$NewMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MessageModel message_model});
}

/// @nodoc
class __$$NewMessageImplCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res, _$NewMessageImpl>
    implements _$$NewMessageImplCopyWith<$Res> {
  __$$NewMessageImplCopyWithImpl(
      _$NewMessageImpl _value, $Res Function(_$NewMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message_model = null,
  }) {
    return _then(_$NewMessageImpl(
      null == message_model
          ? _value.message_model
          : message_model // ignore: cast_nullable_to_non_nullable
              as MessageModel,
    ));
  }
}

/// @nodoc

class _$NewMessageImpl implements NewMessage {
  const _$NewMessageImpl(this.message_model);

  @override
  final MessageModel message_model;

  @override
  String toString() {
    return 'MessageEvent.newMessage(message_model: $message_model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewMessageImpl &&
            (identical(other.message_model, message_model) ||
                other.message_model == message_model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message_model);

  /// Create a copy of MessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewMessageImplCopyWith<_$NewMessageImpl> get copyWith =>
      __$$NewMessageImplCopyWithImpl<_$NewMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String sender, String message, String reciver)
        sendMessageEvent,
    required TResult Function() initSocket,
    required TResult Function(MessageModel message_model) newMessage,
    required TResult Function(String reciver) readMessage,
  }) {
    return newMessage(message_model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String sender, String message, String reciver)?
        sendMessageEvent,
    TResult? Function()? initSocket,
    TResult? Function(MessageModel message_model)? newMessage,
    TResult? Function(String reciver)? readMessage,
  }) {
    return newMessage?.call(message_model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String sender, String message, String reciver)?
        sendMessageEvent,
    TResult Function()? initSocket,
    TResult Function(MessageModel message_model)? newMessage,
    TResult Function(String reciver)? readMessage,
    required TResult orElse(),
  }) {
    if (newMessage != null) {
      return newMessage(message_model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SendMessageEvent value) sendMessageEvent,
    required TResult Function(InitSocket value) initSocket,
    required TResult Function(NewMessage value) newMessage,
    required TResult Function(ReadMessage value) readMessage,
  }) {
    return newMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SendMessageEvent value)? sendMessageEvent,
    TResult? Function(InitSocket value)? initSocket,
    TResult? Function(NewMessage value)? newMessage,
    TResult? Function(ReadMessage value)? readMessage,
  }) {
    return newMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SendMessageEvent value)? sendMessageEvent,
    TResult Function(InitSocket value)? initSocket,
    TResult Function(NewMessage value)? newMessage,
    TResult Function(ReadMessage value)? readMessage,
    required TResult orElse(),
  }) {
    if (newMessage != null) {
      return newMessage(this);
    }
    return orElse();
  }
}

abstract class NewMessage implements MessageEvent {
  const factory NewMessage(final MessageModel message_model) = _$NewMessageImpl;

  MessageModel get message_model;

  /// Create a copy of MessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewMessageImplCopyWith<_$NewMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReadMessageImplCopyWith<$Res> {
  factory _$$ReadMessageImplCopyWith(
          _$ReadMessageImpl value, $Res Function(_$ReadMessageImpl) then) =
      __$$ReadMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reciver});
}

/// @nodoc
class __$$ReadMessageImplCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res, _$ReadMessageImpl>
    implements _$$ReadMessageImplCopyWith<$Res> {
  __$$ReadMessageImplCopyWithImpl(
      _$ReadMessageImpl _value, $Res Function(_$ReadMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reciver = null,
  }) {
    return _then(_$ReadMessageImpl(
      null == reciver
          ? _value.reciver
          : reciver // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReadMessageImpl implements ReadMessage {
  const _$ReadMessageImpl(this.reciver);

  @override
  final String reciver;

  @override
  String toString() {
    return 'MessageEvent.readMessage(reciver: $reciver)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadMessageImpl &&
            (identical(other.reciver, reciver) || other.reciver == reciver));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reciver);

  /// Create a copy of MessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadMessageImplCopyWith<_$ReadMessageImpl> get copyWith =>
      __$$ReadMessageImplCopyWithImpl<_$ReadMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String sender, String message, String reciver)
        sendMessageEvent,
    required TResult Function() initSocket,
    required TResult Function(MessageModel message_model) newMessage,
    required TResult Function(String reciver) readMessage,
  }) {
    return readMessage(reciver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String sender, String message, String reciver)?
        sendMessageEvent,
    TResult? Function()? initSocket,
    TResult? Function(MessageModel message_model)? newMessage,
    TResult? Function(String reciver)? readMessage,
  }) {
    return readMessage?.call(reciver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String sender, String message, String reciver)?
        sendMessageEvent,
    TResult Function()? initSocket,
    TResult Function(MessageModel message_model)? newMessage,
    TResult Function(String reciver)? readMessage,
    required TResult orElse(),
  }) {
    if (readMessage != null) {
      return readMessage(reciver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SendMessageEvent value) sendMessageEvent,
    required TResult Function(InitSocket value) initSocket,
    required TResult Function(NewMessage value) newMessage,
    required TResult Function(ReadMessage value) readMessage,
  }) {
    return readMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SendMessageEvent value)? sendMessageEvent,
    TResult? Function(InitSocket value)? initSocket,
    TResult? Function(NewMessage value)? newMessage,
    TResult? Function(ReadMessage value)? readMessage,
  }) {
    return readMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SendMessageEvent value)? sendMessageEvent,
    TResult Function(InitSocket value)? initSocket,
    TResult Function(NewMessage value)? newMessage,
    TResult Function(ReadMessage value)? readMessage,
    required TResult orElse(),
  }) {
    if (readMessage != null) {
      return readMessage(this);
    }
    return orElse();
  }
}

abstract class ReadMessage implements MessageEvent {
  const factory ReadMessage(final String reciver) = _$ReadMessageImpl;

  String get reciver;

  /// Create a copy of MessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadMessageImplCopyWith<_$ReadMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<MessageModel> messageModel) messageSucess,
    required TResult Function(String message) messageFailure,
    required TResult Function() messageLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<MessageModel> messageModel)? messageSucess,
    TResult? Function(String message)? messageFailure,
    TResult? Function()? messageLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<MessageModel> messageModel)? messageSucess,
    TResult Function(String message)? messageFailure,
    TResult Function()? messageLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MessageSucess value) messageSucess,
    required TResult Function(MessageFailure value) messageFailure,
    required TResult Function(MessageLoading value) messageLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MessageSucess value)? messageSucess,
    TResult? Function(MessageFailure value)? messageFailure,
    TResult? Function(MessageLoading value)? messageLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MessageSucess value)? messageSucess,
    TResult Function(MessageFailure value)? messageFailure,
    TResult Function(MessageLoading value)? messageLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageStateCopyWith<$Res> {
  factory $MessageStateCopyWith(
          MessageState value, $Res Function(MessageState) then) =
      _$MessageStateCopyWithImpl<$Res, MessageState>;
}

/// @nodoc
class _$MessageStateCopyWithImpl<$Res, $Val extends MessageState>
    implements $MessageStateCopyWith<$Res> {
  _$MessageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageState
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
    extends _$MessageStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'MessageState.initial()';
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
    required TResult Function(List<MessageModel> messageModel) messageSucess,
    required TResult Function(String message) messageFailure,
    required TResult Function() messageLoading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<MessageModel> messageModel)? messageSucess,
    TResult? Function(String message)? messageFailure,
    TResult? Function()? messageLoading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<MessageModel> messageModel)? messageSucess,
    TResult Function(String message)? messageFailure,
    TResult Function()? messageLoading,
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
    required TResult Function(MessageSucess value) messageSucess,
    required TResult Function(MessageFailure value) messageFailure,
    required TResult Function(MessageLoading value) messageLoading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MessageSucess value)? messageSucess,
    TResult? Function(MessageFailure value)? messageFailure,
    TResult? Function(MessageLoading value)? messageLoading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MessageSucess value)? messageSucess,
    TResult Function(MessageFailure value)? messageFailure,
    TResult Function(MessageLoading value)? messageLoading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MessageState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$MessageSucessImplCopyWith<$Res> {
  factory _$$MessageSucessImplCopyWith(
          _$MessageSucessImpl value, $Res Function(_$MessageSucessImpl) then) =
      __$$MessageSucessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MessageModel> messageModel});
}

/// @nodoc
class __$$MessageSucessImplCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res, _$MessageSucessImpl>
    implements _$$MessageSucessImplCopyWith<$Res> {
  __$$MessageSucessImplCopyWithImpl(
      _$MessageSucessImpl _value, $Res Function(_$MessageSucessImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageModel = null,
  }) {
    return _then(_$MessageSucessImpl(
      null == messageModel
          ? _value._messageModel
          : messageModel // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ));
  }
}

/// @nodoc

class _$MessageSucessImpl implements MessageSucess {
  const _$MessageSucessImpl(final List<MessageModel> messageModel)
      : _messageModel = messageModel;

  final List<MessageModel> _messageModel;
  @override
  List<MessageModel> get messageModel {
    if (_messageModel is EqualUnmodifiableListView) return _messageModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messageModel);
  }

  @override
  String toString() {
    return 'MessageState.messageSucess(messageModel: $messageModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageSucessImpl &&
            const DeepCollectionEquality()
                .equals(other._messageModel, _messageModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_messageModel));

  /// Create a copy of MessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageSucessImplCopyWith<_$MessageSucessImpl> get copyWith =>
      __$$MessageSucessImplCopyWithImpl<_$MessageSucessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<MessageModel> messageModel) messageSucess,
    required TResult Function(String message) messageFailure,
    required TResult Function() messageLoading,
  }) {
    return messageSucess(messageModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<MessageModel> messageModel)? messageSucess,
    TResult? Function(String message)? messageFailure,
    TResult? Function()? messageLoading,
  }) {
    return messageSucess?.call(messageModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<MessageModel> messageModel)? messageSucess,
    TResult Function(String message)? messageFailure,
    TResult Function()? messageLoading,
    required TResult orElse(),
  }) {
    if (messageSucess != null) {
      return messageSucess(messageModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MessageSucess value) messageSucess,
    required TResult Function(MessageFailure value) messageFailure,
    required TResult Function(MessageLoading value) messageLoading,
  }) {
    return messageSucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MessageSucess value)? messageSucess,
    TResult? Function(MessageFailure value)? messageFailure,
    TResult? Function(MessageLoading value)? messageLoading,
  }) {
    return messageSucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MessageSucess value)? messageSucess,
    TResult Function(MessageFailure value)? messageFailure,
    TResult Function(MessageLoading value)? messageLoading,
    required TResult orElse(),
  }) {
    if (messageSucess != null) {
      return messageSucess(this);
    }
    return orElse();
  }
}

abstract class MessageSucess implements MessageState {
  const factory MessageSucess(final List<MessageModel> messageModel) =
      _$MessageSucessImpl;

  List<MessageModel> get messageModel;

  /// Create a copy of MessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageSucessImplCopyWith<_$MessageSucessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageFailureImplCopyWith<$Res> {
  factory _$$MessageFailureImplCopyWith(_$MessageFailureImpl value,
          $Res Function(_$MessageFailureImpl) then) =
      __$$MessageFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MessageFailureImplCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res, _$MessageFailureImpl>
    implements _$$MessageFailureImplCopyWith<$Res> {
  __$$MessageFailureImplCopyWithImpl(
      _$MessageFailureImpl _value, $Res Function(_$MessageFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MessageFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessageFailureImpl implements MessageFailure {
  const _$MessageFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MessageState.messageFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageFailureImplCopyWith<_$MessageFailureImpl> get copyWith =>
      __$$MessageFailureImplCopyWithImpl<_$MessageFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<MessageModel> messageModel) messageSucess,
    required TResult Function(String message) messageFailure,
    required TResult Function() messageLoading,
  }) {
    return messageFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<MessageModel> messageModel)? messageSucess,
    TResult? Function(String message)? messageFailure,
    TResult? Function()? messageLoading,
  }) {
    return messageFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<MessageModel> messageModel)? messageSucess,
    TResult Function(String message)? messageFailure,
    TResult Function()? messageLoading,
    required TResult orElse(),
  }) {
    if (messageFailure != null) {
      return messageFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MessageSucess value) messageSucess,
    required TResult Function(MessageFailure value) messageFailure,
    required TResult Function(MessageLoading value) messageLoading,
  }) {
    return messageFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MessageSucess value)? messageSucess,
    TResult? Function(MessageFailure value)? messageFailure,
    TResult? Function(MessageLoading value)? messageLoading,
  }) {
    return messageFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MessageSucess value)? messageSucess,
    TResult Function(MessageFailure value)? messageFailure,
    TResult Function(MessageLoading value)? messageLoading,
    required TResult orElse(),
  }) {
    if (messageFailure != null) {
      return messageFailure(this);
    }
    return orElse();
  }
}

abstract class MessageFailure implements MessageState {
  const factory MessageFailure(final String message) = _$MessageFailureImpl;

  String get message;

  /// Create a copy of MessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageFailureImplCopyWith<_$MessageFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageLoadingImplCopyWith<$Res> {
  factory _$$MessageLoadingImplCopyWith(_$MessageLoadingImpl value,
          $Res Function(_$MessageLoadingImpl) then) =
      __$$MessageLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MessageLoadingImplCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res, _$MessageLoadingImpl>
    implements _$$MessageLoadingImplCopyWith<$Res> {
  __$$MessageLoadingImplCopyWithImpl(
      _$MessageLoadingImpl _value, $Res Function(_$MessageLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MessageLoadingImpl implements MessageLoading {
  const _$MessageLoadingImpl();

  @override
  String toString() {
    return 'MessageState.messageLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MessageLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<MessageModel> messageModel) messageSucess,
    required TResult Function(String message) messageFailure,
    required TResult Function() messageLoading,
  }) {
    return messageLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<MessageModel> messageModel)? messageSucess,
    TResult? Function(String message)? messageFailure,
    TResult? Function()? messageLoading,
  }) {
    return messageLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<MessageModel> messageModel)? messageSucess,
    TResult Function(String message)? messageFailure,
    TResult Function()? messageLoading,
    required TResult orElse(),
  }) {
    if (messageLoading != null) {
      return messageLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MessageSucess value) messageSucess,
    required TResult Function(MessageFailure value) messageFailure,
    required TResult Function(MessageLoading value) messageLoading,
  }) {
    return messageLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MessageSucess value)? messageSucess,
    TResult? Function(MessageFailure value)? messageFailure,
    TResult? Function(MessageLoading value)? messageLoading,
  }) {
    return messageLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MessageSucess value)? messageSucess,
    TResult Function(MessageFailure value)? messageFailure,
    TResult Function(MessageLoading value)? messageLoading,
    required TResult orElse(),
  }) {
    if (messageLoading != null) {
      return messageLoading(this);
    }
    return orElse();
  }
}

abstract class MessageLoading implements MessageState {
  const factory MessageLoading() = _$MessageLoadingImpl;
}
