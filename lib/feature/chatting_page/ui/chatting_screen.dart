import 'package:fitness/core/helper/constant.dart';
import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/widgets/image_widget.dart';
import 'package:fitness/feature/chatting_page/ui/widgets/ReplyCard.dart';
import 'package:fitness/feature/chatting_page/ui/widgets/own_message.dart';
import 'package:fitness/feature/chatting_page/ui/widgets/send_message.dart';
import 'package:flutter/material.dart';

class ChattingScreen extends StatefulWidget {
  final String name;
  const ChattingScreen({super.key, required this.name});

  @override
  State<ChattingScreen> createState() => _ChattingScreenState();
}

class _ChattingScreenState extends State<ChattingScreen> {
  final TextEditingController _textEditingController = TextEditingController();
 // final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.darkBlue,

      body: SafeArea(
        child: Column(
          children: [
        
            Expanded(
              flex: 1,
              child: Container(
               // height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorsManager.mainYellow),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(12),
                  ),
                  color: ColorsManager.mainYellow,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("chattng with ${widget.name}", style: TextStyle(fontSize: 15)),
                      SizedBox(width: 5),
                      CirImageWidget(photo: unknownImage),
                      SizedBox(width: 100),
              
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.video_call, size: 30),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Expanded(
              flex: 6,
              child: ListView(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: ReplyCard(message: "message", time: "time"),
                  ),
                  
            Align(
              alignment: Alignment.topRight,
              child: OwnMessageCard(message: "message", time: "time"),
            ),
                ],
              ),
            ),

            Expanded(
              flex: 1,
              child: SendBubble(messageController: _textEditingController, onPressed:  (){}))
          ],
        ),
      ),
    );
  }
}
