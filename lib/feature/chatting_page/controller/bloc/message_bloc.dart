 import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/core/helper/constant.dart';
import 'package:fitness/feature/chatting_page/data/model/message_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
// ignore: library_prefixes
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_client/socket_io_client.dart';

part 'message_event.dart';
part 'message_state.dart';
part 'message_bloc.freezed.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
    TextEditingController textEditingController=TextEditingController();
    final key=GlobalKey<FormState>();
    //GlobalKey<FormState>()
   Future<int>boxlength()async{
  
    var myBox = await Hive.openBox(hiveNam);
     int boxLength = myBox.length;
return boxLength;
   }
     List<MessageModel> messages = [];
      String time=DateTime.now().toUtc().toString().substring(0, 16);
    IO.Socket socket = IO.io(
      "http://10.0.2.2:3000",
       <String, dynamic>{
        "transports": ["websocket"],
        "autoConnect": true,
        'reconnection': true, // إعادة الاتصال تلقائيًا
         'timeout': 50000,
      });

  MessageBloc() : super(_Initial()) {
    socket = IO.io(
    'http://YOUR_SERVER_URL',
    IO.OptionBuilder()
        .setTransports(['websocket'])
        .disableAutoConnect()
        .build(),
  );

  socket.connect();

  socket.onConnect((_) {
    print('Socket connected');
  });

  socket.onDisconnect((_) {
    print('Socket disconnected');
  });
 socket.emit("signin", FirebaseAuth.instance.currentUser!.uid);
  on<MessageEvent>((event, emit) async {
    // events
  });

    on<MessageEvent>((event, emit) async{
       /*
        socket.on(
        'message',
        (msg) => {
              print("111111111$msg"),
              setState(() {
                // MessagesModel.
                messageList.add(MessageModel.fromJson(msg));
                     _controller.animateTo(_controller.position.maxScrollExtent,
            duration: Duration(milliseconds: 300), curve: Curves.easeOut);
      
              })
            });
            */
Future<void> sendMessage(
      String sender, String message, String reciver) async {
    MessageModel messageModel = MessageModel(
        msgContent: message, sender: sender, reciver: reciver, type: "OwnMessage", time: time);

    socket.emit("message", {
      "type": "OwnMessage",
      "sender": sender,
      "reciver": reciver,
      "message": message,
      'time': time
    });
       //  emit(ChatSucsess(message: messages));
      //messages.add(messageModel);
 
     }
  });



  }
}
