import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/feature/chatting_page/data/model/message_model.dart';
import 'package:fitness/feature/chatting_page/ui/widgets/ReplyCard.dart';
import 'package:fitness/feature/chatting_page/ui/widgets/own_message.dart';
import 'package:flutter/material.dart';

class MessageListview extends StatelessWidget {
  final List<MessageModel> messageModel;
  const MessageListview({super.key, required this.messageModel});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messageModel.length,
      itemBuilder: (BuildContext context, int index) {
        return messageModel[index].sender ==
                FirebaseAuth.instance.currentUser!.uid
            ? Align(
                alignment: Alignment.topRight,
                child: OwnMessageCard(
                  messageModel: messageModel[index], //messageList[index],
                ),
              )
            : Align(
                alignment: Alignment.bottomLeft,
                child: ReplyCard(
                  messageModel: messageModel[index], //messageList[index],
                ),
              );
      },
    );
  }
}
