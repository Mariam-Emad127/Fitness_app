 import 'package:firebase_auth/firebase_auth.dart';
 import 'package:fitness/feature/chatting_page/data/model/message_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_client/socket_io_client.dart';

part 'message_event.dart';
part 'message_state.dart';
part 'message_bloc.freezed.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
    TextEditingController textEditingController=TextEditingController();
      List<MessageModel> messageList = [];

    final key=GlobalKey<FormState>();
        IO.Socket socket;
 
   MessageBloc(this.socket) : super(MessageState.initial()) {
 on<InitSocket>(initSocket);
 on<NewMessage>(newMessage);
 on<SendMessageEvent>(sendMessage);
 
 }

  Future<void> initSocket(
      InitSocket event, Emitter<MessageState> emit) async {
    emit(const MessageState.messageLoading());

    try {
      socket.connect();

      socket.onConnect((_) {
        socket.emit("signin", FirebaseAuth.instance.currentUser!.uid);
      });

      socket.on('message', (data) {
        final message = MessageModel.fromJson(data);
        add(MessageEvent.newMessage(message)); // 👈 مهم جدًا
      });
    } catch (e) {
      emit(MessageState.messageFailure(e.toString()));
    }
  }
  void newMessage (
      NewMessage event, Emitter<MessageState> emit) {
    messageList.add(event.message_model);
    emit(MessageState.messageSucess(List.from(messageList)));
  }
    void sendMessage(
      SendMessageEvent event, Emitter<MessageState> emit) {
    final messageModel = MessageModel(
      msgContent: event.message,
      sender: event.sender,
      reciver: event.reciver,
      type: "OwnMessage",
      time: DateTime.now().toUtc().toString().substring(0, 16),
    );

    socket.emit("message", messageModel.toJson());
    messageList.add(messageModel);
    emit(MessageState.messageSucess(List.from(messageList)));
  }
}