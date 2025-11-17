import 'package:fitness/core/helper/constant.dart';
import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/widgets/image_widget.dart';
import 'package:fitness/feature/chatting_page/ui/widgets/ReplyCard.dart';
import 'package:fitness/feature/chatting_page/ui/widgets/send_message.dart';
import 'package:flutter/material.dart';
class ChattingScreen extends StatefulWidget {
  const ChattingScreen({super.key});

  @override
  State<ChattingScreen> createState() => _ChattingScreenState();
}

class _ChattingScreenState extends State<ChattingScreen> {
    final TextEditingController _textEditingController = TextEditingController();
     final ScrollController _controller=ScrollController(); 

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
         backgroundColor: ColorsManager.darkBlue,
      appBar: AppBar(
       
        backgroundColor: ColorsManager.darkBlue,
       flexibleSpace: Container( decoration: const BoxDecoration(
       color:  ColorsManager.mainYellow,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      ),
      actions: [Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: IconButton(onPressed:  (){}, icon:Icon(Icons.video_call),color: Colors.white, ),
      )],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
          mainAxisAlignment: MainAxisAlignment.start,
             children: [ 
              ImageWidget(photo: unknownImage),
              SizedBox(width: 10,),
              Text(
                "recname",
                style: TextStyle(fontSize: 15, color: Colors.white),
                textAlign: TextAlign.left,
              ),
           ] ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
              top: 0,
              bottom: 60,
              width: 200, //size.width,
              child: ListView.builder(
                controller: _controller,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                reverse: true,
                cacheExtent: 1000,
                itemCount:5, //messageList.length,
                itemBuilder: (BuildContext context, int index) {
           
                    return FittedBox(
                      child: ReplyCard(
                        message: "nnnn",
                        time:"2222" 
                      ),
                    );
      
                  }
                //},
              )),
          SendBubble(
              messageController: _textEditingController,
              onPressed: () async {
              
               }),
        ],
      ),
    );
  }
}