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
  final double? widthFactor;
  final double? heightFactor;
  final Color borderColor;
  final double borderWidth;

  const AvatarCircle({
    Key? key,
    this.imageUrl,
    this.file,
    this.widthFactor,
    this.heightFactor,
    this.borderColor = Colors.black,
    this.borderWidth = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: FittedBox(
        fit: BoxFit.contain,
        child: CircleAvatar(
          backgroundColor: borderColor,
          child: Padding(
            padding: EdgeInsets.all(borderWidth),
            child: _buildImage(),
          ),
        ),
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
