// ignore_for_file: file_names

import 'package:fitness/core/theming/color.dart';
import 'package:fitness/feature/chatting_page/data/model/message_model.dart';
import 'package:flutter/material.dart';

class ReplyCard extends StatelessWidget {
  const ReplyCard({super.key, required this.messageModel });
 

final MessageModel messageModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(vertical: 6),
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.7,
      ),
      decoration: BoxDecoration(
        color: ColorsManager.mainYellow,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(messageModel.msgContent , style: TextStyle(color: Colors.black)),
          Text(messageModel.time, style: TextStyle(fontSize: 10, color: Colors.black)),
        ],
      ),
    );
  }
}
