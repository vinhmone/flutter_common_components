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

  const AvatarCircle({
    Key? key,
    this.imageUrl,
    this.file,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: FittedBox(
        fit: BoxFit.contain,
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
