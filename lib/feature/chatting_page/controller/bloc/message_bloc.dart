 import 'package:fitness/core/helper/constant.dart';
import 'package:fitness/feature/chatting_page/data/model/message_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'message_event.dart';
part 'message_state.dart';
part 'message_bloc.freezed.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
    TextEditingController textEditingController=TextEditingController();
    final key=GlobalKey<FormState>();
    //GlobalKey<FormState>()
   Future<int>boxlength()async{
  
    var myBox = await Hive.openBox(hiveNam);
     int boxLength = myBox.length;
return boxLength;
   }
  MessageBloc() : super(_Initial()) {
    on<MessageEvent>((event, emit) async{
     
     });
  }
}
