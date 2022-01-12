import 'package:baxter_common/common/chat_cover_image.dart';
import 'package:baxter_common/model/Channel.dart';
import 'package:flutter/material.dart';

class ItemChannel extends StatelessWidget {
  final Channel channel;

  const ItemChannel({
    Key? key,
    required this.channel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ChatCoverImage(
          chatType: channel.chatType,
        ),
      ],
    );
  }
}
