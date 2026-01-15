import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:fitness/feature/chatting_page/controller/bloc/message_bloc.dart';
import 'package:fitness/feature/chatting_page/data/model/message_model.dart';
 import 'package:fitness/feature/chatting_page/ui/widgets/chatting_appbar.dart';
import 'package:fitness/feature/chatting_page/ui/widgets/own_message.dart';
import 'package:fitness/feature/chatting_page/ui/widgets/send_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
 
class ChattingScreen extends StatefulWidget {
  final String name;
  final String id;
  const ChattingScreen({super.key, required this.name, required this.id});

  @override
  State<ChattingScreen> createState() => _ChattingScreenState();
}
  int ?len=0;
class _ChattingScreenState extends State<ChattingScreen> {
  //final
   TextEditingController _textEditingController = TextEditingController();
    List<MessageModel> messageList = [];

  // final ScrollController _controller = ScrollController();
   List<MessageModel> messages = [];
      String time=DateTime.now().toUtc().toString().substring(0, 16);
    IO.Socket socket = IO.io(
      //"http://10.0.2.2:3000",
       "http://192.168.1.4:3000",
       //"http://127.0.0.1:3000"
       <String, dynamic>{
        "transports": ["websocket"],
        "autoConnect": true,
        'reconnection': true, // إعادة الاتصال تلقائيًا
         'timeout': 50000,
      });
    final key=GlobalKey<FormState>();

@override
  void initState() {
_textEditingController=TextEditingController();
 
 print( "nnnnnnnnnnn$len");
    super.initState();
    setState(() {
      
    });
      socket.onConnectError((data) {
      print('Connection Error: $data');


    });
        socket.emit("signin", FirebaseAuth.instance.currentUser!.uid);

    socket.onError((data) {
      print('Error: $data');
    });
    setState(() {});
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
              setState(() {
           
                messageList.add(MessageModel.fromJson(msg));
          
      
              })
            });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.darkBlue,

      body: SafeArea(
        child: Form(
          key: key, 
          child: Column(
            children: [
              //ChattingAppbar(name: widget.name, id: widget.id,),
          // len==0?
              Expanded(
                flex: 6,
                child:  ListView.builder(
                  itemCount:len,
                  itemBuilder: (BuildContext context, int index) {
                    return  Align(
                      alignment: Alignment.topRight,
                      child: OwnMessageCard(textEditingController:_textEditingController ,
                      //textEditingController: context.read<MessageBloc>().textEditingController
                       time: "time"),
                    );  
                    },
                 
                 /* children: [
                  /*
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: ReplyCard(message: "message", time: "time"),
                    ),
          */
                  
                  ],
  */
                ),
           
               ),//:Text("nnnnnnnnnnnnnnnnnnnnnn",style: TextStyles.font15WhiteMedium,),
        
              Expanded(
                flex: 1,
                child:    Padding(
      padding: const EdgeInsets.only(left: 8, bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
              controller: _textEditingController, //widget.messageController,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                hintText: "Message",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),

                fillColor: Colors.white,
                focusColor: Colors.white,
                filled: true,

                counterText: '',
              ),
              style: TextStyle(fontSize: 15),
              keyboardType: TextInputType.text,
              maxLength: 500,
            ),
          ),
          IconButton(
            icon: Icon(Icons.send, color: ColorsManager.mainYellow),
            onPressed: () {
            
                      sendMessage(FirebaseAuth.instance.currentUser!.uid, _textEditingController.text, widget.id); 
  _textEditingController.clear();
              setState(() {});
            },
          ),
        ],
      ),
    )
 
 
                
              /*  
                SendBubble(
                   messageController: _textEditingController,
                 onbressed:(){
                  
                 setState(() {
                  //_textEditingController.clear();
                  
                 sendMessage(FirebaseAuth.instance.currentUser!.uid, _textEditingController.text, widget.id); 
                 });
                 },//
            
                ),
              */
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future<void> sendMessage(
      String sender, String message, String reciver) async {
    MessageModel messageModel = MessageModel(
        msgContent: _textEditingController.text, sender: sender, reciver: reciver, type: "OwnMessage", time: time);

    socket.emit("message", {
      "type": "OwnMessage",
      "sender": sender,
      "reciver": reciver,
      "message": _textEditingController.text,
      'time': time
    });
}
}