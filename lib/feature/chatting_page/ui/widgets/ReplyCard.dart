// ignore_for_file: file_names

import 'package:fitness/core/theming/color.dart';
import 'package:flutter/material.dart';

class ReplyCard extends StatelessWidget {
  const ReplyCard({super.key, required this.message, required this.time});
  final String message;
  final String time;

  //final MessageModel message;

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
          Text("messageText", style: TextStyle(color: Colors.black)),
          Text("1:30", style: TextStyle(fontSize: 10, color: Colors.black)),
        ],
      ),
    );
  }
}
