import 'package:flutter/material.dart';

class AppBarWithTextTitle extends AppBar {
  final String titleText;
  final TextStyle? textStyle;
  final Widget? tailingWidget;
  final Color? contentColor;
  final bool showBackButton;

  AppBarWithTextTitle({
    Key? key,
    this.tailingWidget,
    this.titleText = '',
    this.textStyle,
    this.contentColor = Colors.white,
    this.showBackButton = true,
  }) : super(key: key);

  @override
  Widget? get flexibleSpace {
    Color? textColor = Colors.white;
    if (textStyle?.color != null) {
      textColor = textStyle?.color;
    } else if (contentColor != null) {
      textColor = contentColor;
    }
    final _textStyle = textStyle?.copyWith(color: textColor);
    return SafeArea(
      child: Stack(
        children: [
          showBackButton
              ? Align(
                  alignment: Alignment.centerLeft,
                  child: BackButton(
                    color: contentColor,
                  ),
                )
              : Container(),
          Align(
            alignment: Alignment.center,
            child: Text(
              titleText,
              textAlign: TextAlign.center,
              style: _textStyle,
            ),
          ),
          (tailingWidget == null)
              ? Container()
              : Align(
                  alignment: Alignment.centerRight,
                  child: tailingWidget!,
                )
        ],
      ),
    );
  }
}
