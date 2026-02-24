import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/core/helper/notification_fun.dart';
import 'package:fitness/core/theming/color.dart';
import 'package:fitness/feature/chatting_page/controller/bloc/message_bloc.dart';
import 'package:fitness/feature/chatting_page/ui/widgets/chatting_appbar.dart';
import 'package:fitness/feature/chatting_page/ui/widgets/messageblocconsumer.dart';
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

class _ChattingScreenState extends State<ChattingScreen> {
  late TextEditingController _textEditingController;
  final key = GlobalKey<FormState>();

  @override
  void initState() {
    _textEditingController = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.darkBlue,

      body: SafeArea(
        child: Form(
          key: key,
          child: Column(
            children: [
              ChattingAppbar(name: widget.name, id: widget.id,),
              Expanded(flex: 6, child: Messageblocconsumer()),

              SendBubble(
                messageController: _textEditingController,
                onPressed: () async {
await NotificationFunction().sendnotification();

                  context.read<MessageBloc>().add(
                    SendMessageEvent(
                      FirebaseAuth.instance.currentUser!.uid,
                      _textEditingController.text,
                      widget.id,
                    ),
                  );
                  setState(() {});
                  _textEditingController.clear();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
