import 'dart:developer';
import 'dart:io';

import 'package:baxter_common/common/avatar_circle.dart';
import 'package:baxter_common/model/channel.dart';
import 'package:flutter/material.dart';

class ChatCoverImage extends StatelessWidget {
  final ChatType chatType;
  final VisibilityStatus visibilityStatus;
  final List<String?>? imageUrl;
  final String? groupImage;
  final File? file;
  final double size;
  final Color borderColor;
  final double borderWidth;

  const ChatCoverImage({
    Key? key,
    this.chatType = ChatType.private,
    this.visibilityStatus = VisibilityStatus.disable,
    this.imageUrl,
    this.groupImage,
    this.file,
    this.size = 100,
    this.borderColor = Colors.black,
    this.borderWidth = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double statusImageSize = MediaQuery.of(context).size.width / 10;
    if (size > 0.0) {
      // statusImageSize = sqrt(size!);
      statusImageSize = size / 5;
    }
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        children: [
          ..._getCover(context),
          Positioned(
            right: 0.0,
            bottom: 0.0,
            child: SizedBox(
              width: statusImageSize,
              height: statusImageSize,
              child: FittedBox(
                child: _getVisibilityWidget(visibilityStatus),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _getCover(BuildContext context) {
    String? singleUrl;
    if (imageUrl != null) {
      if (imageUrl!.isNotEmpty) {
        singleUrl = imageUrl!.first;
    }
    }
    switch (chatType) {
      case ChatType.private:
        return [_getPrivatePhoto(url: singleUrl, file: file)];
      case ChatType.group:
        return _getGroupCover(context);
      default:
        return [_getSinglePhoto(url: singleUrl, file: file)];
    }
  }

  Widget _getPrivatePhoto({
    String? url,
    File? file,
  }) {
    return SizedBox(
      width: size,
      height: size,
      child: FittedBox(
        child: AvatarCircle(
          imageUrl: url,
          file: file,
          borderColor: borderColor,
          borderWidth: borderWidth,
        ),
      ),
    );
  }

  Widget _getSinglePhoto({
    String? url,
    File? file,
  }) {
    return AvatarCircle(
      imageUrl: url,
      file: file,
      borderColor: borderColor,
      borderWidth: borderWidth,
    );
  }

  List<Widget> _getGroupCover(BuildContext context) {
    String? url1;
    String? url2;
    double smallImageSize = MediaQuery.of(context).size.width / 1.5;
    if (size > 0) {
      smallImageSize = size / 1.5;
      // smallImageSize = sqrt(size!) * 2.5;
    }
    if (imageUrl != null) {
      if (imageUrl!.isNotEmpty) {
        url1 = imageUrl![0];
      }
      if (imageUrl!.length > 1) {
        url2 = imageUrl![1];
      }
    }
    log(smallImageSize.toString());
    if (groupImage != null) {
      return [_getPrivatePhoto(url: groupImage)];
    } else {
      return [
        Positioned(
          top: 0,
          left: 0,
          child: SizedBox(
            width: smallImageSize,
            height: smallImageSize,
            child: FittedBox(
              fit: BoxFit.contain,
              child: _getSinglePhoto(url: url1),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: SizedBox(
            width: smallImageSize,
            height: smallImageSize,
            child: FittedBox(
              fit: BoxFit.contain,
              child: _getSinglePhoto(url: url2),
            ),
          ),
        ),
      ];
    }
  }

  Widget _getVisibilityWidget(VisibilityStatus status) {
    switch (status) {
      case VisibilityStatus.disable:
        return Container();
      case VisibilityStatus.online:
        return const Icon(
          Icons.circle,
          color: Colors.green,
        );
      case VisibilityStatus.offline:
        return const Icon(
          Icons.circle,
          color: Colors.red,
        );
      default:
        return Container();
    }
  }
}
