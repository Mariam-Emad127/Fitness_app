import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/core/theming/color.dart';
import 'package:fitness/feature/chatting_page/data/model/message_model.dart';
import 'package:fitness/feature/chatting_page/ui/widgets/ReplyCard.dart';
import 'package:fitness/feature/chatting_page/ui/widgets/own_message.dart';
import 'package:fitness/feature/chatting_page/ui/widgets/send_message.dart';
import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class ChattingScreen extends StatefulWidget {
  final String name;
  final String id;
  const ChattingScreen({super.key, required this.name, required this.id});

  @override
  State<ChattingScreen> createState() => _ChattingScreenState();
}

class _ChattingScreenState extends State<ChattingScreen> {
  late TextEditingController _textEditingController;
  List<MessageModel> messageList = [];

  // final ScrollController _controller = ScrollController();
  List<MessageModel> messages = [];
  String time = DateTime.now().toUtc().toString().substring(0, 16);
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
  final key = GlobalKey<FormState>();

  @override
  void initState() {
    _textEditingController = TextEditingController();
    super.initState();
    setState(() {});
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
        }),
      },
    );
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
              Expanded(
                flex: 6,
                child: ListView.builder(
                  itemCount: messageList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return messageList[index].sender ==
                            FirebaseAuth.instance.currentUser!.uid
                        ? Align(
                            alignment: Alignment.topRight,
                            child: OwnMessageCard(
                              messageModel: messageList[index],
                            ),
                          )
                        : Align(
                            alignment: Alignment.bottomLeft,
                            child: ReplyCard(messageModel: messageList[index]),
                          );
                  },
                ),
              ),

              SendBubble(
                messageController: _textEditingController,
                onPressed: () async {
                  await sendMessage(
                    FirebaseAuth.instance.currentUser!.uid,
                    _textEditingController.text,
                    widget.id,
                  );
                  setState(() {});
                  _textEditingController.clear();
                }, //
              ),

            ],
          ),
        ),
      ),
    );
  }

  Future<void> sendMessage(
    String sender,
    String message,
    String reciver,
  ) async {
    MessageModel messageModel = MessageModel(
      msgContent: _textEditingController.text,
      sender: sender,
      reciver: reciver,
      type: "OwnMessage",
      time: time,
    );

    socket.emit("message", {messageModel.toJson()});
    messageList.add(messageModel);
  }
}
