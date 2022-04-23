import 'package:flutter/material.dart';
import 'package:personal_chat_app/models/Chat.dart';
import 'package:personal_chat_app/models/ChatMessage.dart';
import 'package:personal_chat_app/widgets/add_space.dart';
import 'package:personal_chat_app/widgets/constants.dart';

import '../../chats/chats_input.dart';
import '../../chats/message_page.dart';
import '../../chats/text_message.dart';

class BodyMessage extends StatelessWidget {
  const BodyMessage({Key? key, required this.chat}) : super(key: key);
  final Chat chat;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: demeChatMessages.length,
            itemBuilder: (context, index) => Messages(
              message: demeChatMessages[index],
              chat: chat,
            ),
          ),
        ),
        ChatInputField(),
      ],
    );
  }
}
