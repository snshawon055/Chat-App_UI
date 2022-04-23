// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:personal_chat_app/chats/text_message.dart';
import 'package:personal_chat_app/chats/video_message.dart';

import '../models/Chat.dart';
import '../models/ChatMessage.dart';
import '../widgets/add_space.dart';
import '../widgets/constants.dart';
import 'audio_message.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key, required this.message, required this.chat})
      : super(key: key);
  final ChatMessage message;
  final Chat chat;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        mainAxisAlignment:
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding / 4),
              child: CircleAvatar(
                radius: 14,
                backgroundImage: AssetImage(chat.image),
              ),
            ),
            addHorizontalSpace(kDefaultPadding / 2)
          ],
          messageContain(message),
          if (message.isSender)
            MessageStatusDot(
              status: message.messageStatus,
            ),
        ],
      ),
    );
  }

  messageContain(ChatMessage message) {
    switch (message.messageType) {
      case ChatMessageType.text:
        return MessageSend(message: message);
        break;
      case ChatMessageType.audio:
        return AudioMessage(
          message: message,
        );
      case ChatMessageType.video:
        return VideoMessage(
          message: message,
        );
        break;
      default:
        return const SizedBox();
    }
  }
}

class MessageStatusDot extends StatelessWidget {
  final MessageStatus status;
  const MessageStatusDot({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dotColor(MessageStatus status) {
      switch (status) {
        case MessageStatus.not_sent:
          return kErrorColor;
          break;
        case MessageStatus.not_view:
          return Theme.of(context).textTheme.bodyText1!.color?.withOpacity(0.1);
          break;
        case MessageStatus.viewed:
          return kPrimaryColor;
          break;
        default:
          return Colors.transparent;
      }
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: const EdgeInsets.only(left: kDefaultPadding / 2),
        height: 12,
        width: 12,
        decoration:
            BoxDecoration(color: dotColor(status), shape: BoxShape.circle),
        child: Icon(
          status == MessageStatus.not_sent ? Icons.close : Icons.done,
          size: 8,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
    );
  }
}
