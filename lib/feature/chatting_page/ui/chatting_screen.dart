import 'package:fitness/core/theming/color.dart';
import 'package:fitness/feature/chatting_page/ui/widgets/ReplyCard.dart';
import 'package:fitness/feature/chatting_page/ui/widgets/chatting_appbar.dart';
import 'package:fitness/feature/chatting_page/ui/widgets/own_message.dart';
import 'package:fitness/feature/chatting_page/ui/widgets/send_message.dart';
import 'package:flutter/material.dart';
 
class ChattingScreen extends StatefulWidget {
  final String name;
  final String id;
  const ChattingScreen({super.key, required this.name, required this.id});

  @override
  State<ChattingScreen> createState() => _ChattingScreenState();
}

class _ChattingScreenState extends State<ChattingScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  // final ScrollController _controller = ScrollController();
@override
  void initState() {

 
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.darkBlue,

      body: SafeArea(
        child: Column(
          children: [
            ChattingAppbar(name: widget.name, id: widget.id,),
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
              child: SendBubble(
                messageController: _textEditingController,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
