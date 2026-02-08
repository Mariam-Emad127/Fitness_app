import 'package:fitness/feature/chatting_page/controller/bloc/message_bloc.dart';
import 'package:fitness/feature/chatting_page/ui/widgets/message_listView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Messageblocconsumer extends StatelessWidget {
  const Messageblocconsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return      BlocConsumer<MessageBloc, MessageState>(
                  listener: (context, state) {
                    print(state);
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      messageSucess: (messageModel) =>MessageListview(messageModel: messageModel),
                    messageFailure: (message) =>
                          Text(message, style: TextStyle(color: Colors.white)),
                      messageLoading: () => Container(),
                      orElse: () => Text(
                        "unknowen error",
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  },
                );
             
  }
}