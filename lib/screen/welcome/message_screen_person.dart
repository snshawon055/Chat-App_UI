import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';
import 'package:personal_chat_app/models/Chat.dart';
import 'package:personal_chat_app/screen/welcome/body_message.dart';
import 'package:personal_chat_app/widgets/add_space.dart';
import 'package:personal_chat_app/widgets/constants.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key, required this.chat}) : super(key: key);
  final Chat chat;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildappBar(),
      body: BodyMessage(
        chat: chat,
      ),
    );
  }

  AppBar buildappBar() {
    return AppBar(
      title: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              chat.image,
            ),
          ),
          addHorizontalSpace(kDefaultPadding * 0.75),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chat.name,
                style: TextStyle(fontSize: 16),
              ),
              Text(
                chat.time,
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.local_phone),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.videocam),
        ),
        addHorizontalSpace(kDefaultPadding / 2),
      ],
    );
  }
}
