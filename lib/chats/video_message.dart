import 'package:flutter/material.dart';

import '../models/ChatMessage.dart';
import '../widgets/constants.dart';

class VideoMessage extends StatelessWidget {
  final ChatMessage message;
  const VideoMessage({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      child: AspectRatio(
        aspectRatio: 1.6,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              child: Image.asset("assets/images/Video Place Here.png"),
            ),
            Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  Icons.play_arrow,
                  color: message.isSender ? Colors.white : null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
