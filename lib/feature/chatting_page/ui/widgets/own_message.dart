import 'package:fitness/core/theming/color.dart';
import 'package:flutter/material.dart';
 
class OwnMessageCard extends StatelessWidget {
  final String time;
  final TextEditingController textEditingController;

  const OwnMessageCard({
    super.key,
    required this.time,
    required this.textEditingController,  
  });

  @override
  Widget build(BuildContext context) {
     return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(vertical: 6),
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.7,
      ),
      decoration: BoxDecoration(
        color: ColorsManager.gray,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textEditingController.text,
            style: TextStyle(color: Colors.black),
          ),
          Text("1:30", style: TextStyle(fontSize: 10, color: Colors.black)),
        ],
      ),
    );
  }
}
