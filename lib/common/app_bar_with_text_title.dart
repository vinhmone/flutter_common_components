import 'package:flutter/material.dart';

class AppBarWithTextTitle extends AppBar {
  final String titleText;
  final TextStyle? textStyle;
  final Widget? tailingWidget;
  final Color? contentColor;
  final bool? showBackButton;
  final Color? background;
  final double? appElevation;

  AppBarWithTextTitle({
    Key? key,
    this.tailingWidget,
    this.titleText = '',
    this.textStyle,
    this.contentColor = Colors.white,
    this.showBackButton = true,
    this.background = const Color(0xffA838FF),
    this.appElevation,
  }) : super(key: key);

  @override
  Color? get backgroundColor => background;

  @override
  bool get automaticallyImplyLeading => false;

  @override
  double? get elevation => appElevation;

  //
  // @override
  // Color? get shadowColor => Colors.transparent;
  //
  // @override
  // Color? get foregroundColor => Colors.transparent;

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
          (showBackButton == true)
              ? Positioned(
                  top: 0.0,
                  left: 0.0,
                  bottom: 0.0,
                  child: BackButton(
                    color: contentColor,
                  ),
                )
              : Container(),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                titleText,
                textAlign: TextAlign.center,
                style: _textStyle,
              ),
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
