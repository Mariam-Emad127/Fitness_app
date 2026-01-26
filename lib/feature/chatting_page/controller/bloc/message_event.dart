part of 'message_bloc.dart';

@freezed
class MessageEvent with _$MessageEvent {
  const factory MessageEvent.started() = _Started;
 const factory MessageEvent.sendMessageEvent( 
    String sender,
    String message,
    String reciver,) = SendMessageEvent;
 const factory MessageEvent.initSocket() = InitSocket;

 const factory MessageEvent.newMessage(MessageModel message_model) = NewMessage;

}