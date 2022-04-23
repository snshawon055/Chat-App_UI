import 'package:flutter/material.dart';
import 'package:personal_chat_app/widgets/add_space.dart';
import 'package:personal_chat_app/widgets/constants.dart';

import '../models/ChatMessage.dart';

class AudioMessage extends StatelessWidget {
  const AudioMessage({Key? key, required this.message}) : super(key: key);
  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.55,
        height: 40,
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding * 0.75,
          vertical: kDefaultPadding / 2.5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: kPrimaryColor.withOpacity(message.isSender ? 1 : 0.1),
        ),
        child: Row(
          children: [
            Icon(
              Icons.play_arrow,
              color: message.isSender ? Colors.white : kPrimaryColor,
            ),
            addHorizontalSpace(6),
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: kPrimaryColor.withOpacity(0.4),
                  ),
                  Positioned(
                    left: 0,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            addHorizontalSpace(8),
            Text(
              "0.40",
              style: TextStyle(
                color: message.isSender ? Colors.white : null,
              ),
            )
          ],
        ),
      ),
    );
  }
}
