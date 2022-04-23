import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_chat_app/components/filled_outline_button.dart';
import 'package:personal_chat_app/models/Chat.dart';
import 'package:personal_chat_app/screen/welcome/message_screen_person.dart';
import 'package:personal_chat_app/widgets/add_space.dart';
import 'package:personal_chat_app/widgets/constants.dart';

import '../chats/chats_cards.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(
            kDefaultPadding,
            0,
            kDefaultPadding,
            kDefaultPadding,
          ),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(
                press: () {},
                text: "Recent Message",
              ),
              addHorizontalSpace(kDefaultPadding),
              FillOutlineButton(
                press: () {},
                text: "Active",
                isFilled: false,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatsCard(
              chat: chatsData[index],
              pass: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessageScreen(
                    chat: chatsData[index],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
