 import 'package:fitness/core/theming/color.dart';
import 'package:fitness/feature/chatting_page/controller/bloc/message_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

 
 
class OwnMessageCard extends StatelessWidget {

  const OwnMessageCard({super.key,
 //required this.message,
  required this.time, required this.textEditingController
   });  
  final TextEditingController textEditingController;
    
      final String time;
  @override
  Widget build(BuildContext context) {
      final messageBloc = context.read<MessageBloc>();

           messageBloc.textEditingController ??     Container(
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
                                 messageBloc.textEditingController.toString()??"",
                                     //"messageText",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Text(
                                    "1:30",
                                    style: TextStyle(fontSize: 10, color: Colors.black),
                                  ),
                                ],
                              ),
                                           
                            ); return Container();
   
 
 
  }
}