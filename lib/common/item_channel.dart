import 'package:baxter_common/common/chat_cover_image.dart';
import 'package:baxter_common/model/channel.dart';
import 'package:flutter/material.dart';

class ItemChannel extends StatelessWidget {
  final Channel channel;
  final double size;

  const ItemChannel({
    Key? key,
    required this.channel,
    this.size = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ChatCoverImage(
              chatType: channel.chatType,
              visibilityStatus: channel.visibilityStatus,
              imageUrl: channel.users.map((e) => e.avatarUrl).toList(),
              groupImage: channel.coverUrl,
              size: size * 0.8,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  channel.groupName,
                  maxLines: 1,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Content Content Content Content Content ContentContent',
                  maxLines: 1,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Text(channel.groupName),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
