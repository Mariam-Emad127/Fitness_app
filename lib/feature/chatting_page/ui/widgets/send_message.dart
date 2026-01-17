import 'package:fitness/core/theming/color.dart';
import 'package:flutter/material.dart';

class SendBubble extends StatelessWidget {
  final TextEditingController messageController;
final Future<void> Function() onPressed;
  const SendBubble({
    super.key,
   required this.messageController,
     required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    //   Size size = MediaQuery.maybeOf(context)!.size;
    return Padding(
      padding: const EdgeInsets.only(left: 8, bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
              controller: messageController, //widget.messageController,
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

                //   counterText: '',
              ),
              style: TextStyle(fontSize: 15),
              keyboardType: TextInputType.text,
              maxLength: 500,
            ),
          ),
          IconButton(
            icon: Icon(Icons.send, color: ColorsManager.mainYellow),
            onPressed: ()async {
             await onPressed();
           
            },
          ),
        ],
      ),
    );
  }
}
