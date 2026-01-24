 import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/core/helper/constant.dart';
import 'package:fitness/feature/chatting_page/data/model/message_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
//import 'package:hive/hive.dart';
// ignore: library_prefixes
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_client/socket_io_client.dart';

part 'message_event.dart';
part 'message_state.dart';
part 'message_bloc.freezed.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
    TextEditingController textEditingController=TextEditingController();
      List<MessageModel> messageList = [];

    final key=GlobalKey<FormState>();
      IO.Socket socket = IO.io(
    //"http://10.0.2.2:3000",
    "http://192.168.1.4:3000",
    //"http://127.0.0.1:3000"
    <String, dynamic>{
      "transports": ["websocket"],
      "autoConnect": true,
      'reconnection': true, // إعادة الاتصال تلقائيًا
      'timeout': 50000,
    },
  );
   MessageBloc() : super(_Initial()) {
  on<MessageEvent>((event, emit)
     {void initialLogin(){
emit(MessageState.messageLoading());
   socket.onConnectError((data) {
      print('Connection Error: $data');
    });
    socket.emit("signin", FirebaseAuth.instance.currentUser!.uid);

    socket.onError((data) {
      print('Error: $data');
    });
 
    socket.onDisconnect((data) {
      print('Connection Error: $data');
    });
    socket.connect();
    try {
      socket.onConnect((_) {
        print('connected to websocket 1');
      });
    } catch (e) {
      print('Errorrrrrrrrrrr: $e');
    }
    socket.emit("signin", FirebaseAuth.instance.currentUser!.uid);

    socket.on(
      'message',
      (msg) => {
        print("111111111$msg"),
   {
         messageList.add(MessageModel.fromJson(msg))
     
      },


});
}

   }
  );
  
  on<SendMessageEvent>((event,emit){

    
  Future<void> sendMessage(
   
  ) async {
    MessageModel messageModel = MessageModel(
      msgContent:event.message ,//_textEditingController.text,
      sender: event.sender,
      reciver: event.reciver,
      type: "OwnMessage",
      time: DateTime.now().toUtc().toString().substring(0, 16),
    );

    socket.emit("message", {messageModel.toJson()});
    messageList.add(messageModel);
  }

  } );
  
  }}  
  


 
 
 /*
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
*/
