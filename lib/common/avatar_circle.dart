import 'dart:io';

import 'package:flutter/material.dart';

enum ImageType {
  assetImage,
  fileImage,
  networkImage,
}

class AvatarCircle extends StatelessWidget {
  final String? imageUrl;
  final File? file;
  // final double? width;
  // final double? height;
  final Color? borderColor;
  final double? borderWidth;

  const AvatarCircle({
    Key? key,
    this.imageUrl,
    this.file,
    // this.width,
    // this.height,
    this.borderColor,
    this.borderWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: borderColor ?? Colors.black,
      child: Padding(
        padding: EdgeInsets.all(borderWidth ?? 0.0),
        child: _buildImage(),
      ),
    );
  }

  Widget _buildImage() {
    switch (_getImageType(imageUrl: imageUrl, file: file)) {
      case ImageType.networkImage:
        return CircleAvatar(
          backgroundImage: NetworkImage(imageUrl!),
        );
      case ImageType.assetImage:
        return const CircleAvatar(
          backgroundImage: AssetImage('assets/holder.jpg'),
        );
      case ImageType.fileImage:
        return CircleAvatar(
          backgroundImage: FileImage(file!),
        );
    }
  }

  ImageType _getImageType({
    String? imageUrl,
    File? file,
  }) {
    if (file == null) {
      if (imageUrl == null) {
        return ImageType.assetImage;
      }
      return ImageType.networkImage;
    }
    return ImageType.fileImage;
  }
}
