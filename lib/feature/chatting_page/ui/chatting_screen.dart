import 'package:fitness/core/theming/color.dart';
import 'package:fitness/feature/chatting_page/controller/bloc/message_bloc.dart';
 import 'package:fitness/feature/chatting_page/ui/widgets/chatting_appbar.dart';
import 'package:fitness/feature/chatting_page/ui/widgets/own_message.dart';
import 'package:fitness/feature/chatting_page/ui/widgets/send_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 
class ChattingScreen extends StatefulWidget {
  final String name;
  final String id;
  const ChattingScreen({super.key, required this.name, required this.id});

  @override
  State<ChattingScreen> createState() => _ChattingScreenState();
}
  int ?len=0;
class _ChattingScreenState extends State<ChattingScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  // final ScrollController _controller = ScrollController();
@override
  void initState() {
_textEditingController;
Future<void>boxlength()async{
 len=await context.read<MessageBloc>().boxlength();}
    super.initState();
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.darkBlue,

      body: SafeArea(
        child: Form(
          key: context.read<MessageBloc>().key,
          child: Column(
            children: [
              ChattingAppbar(name: widget.name, id: widget.id,),
          
              Expanded(
                flex: 6,
                child: ListView.builder(
                  itemCount:2,
                  itemBuilder: (BuildContext context, int index) {
                    return len==0?  Align(
                      alignment: Alignment.topRight,
                      child: OwnMessageCard(textEditingController:_textEditingController ,
                      //textEditingController: context.read<MessageBloc>().textEditingController
                       time: "time"),
                    ) :Text( "no data");
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
              ),
         
              Expanded(
                flex: 1,
                child: SendBubble(
                   messageController: _textEditingController,
                 onPressed:(){
                  _textEditingController.clear(); 
                 setState(() {
                   
                 });
                 },//
            
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
