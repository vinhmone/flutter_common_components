import 'package:flutter/material.dart';

class AppBarWithTextTitle extends AppBar {
  final String titleText;
  final TextStyle? textStyle;
  final Widget? tailingButton;

  AppBarWithTextTitle({
    Key? key,
    this.tailingButton,
    this.titleText = '',
    this.textStyle,
  }) : super(key: key);

  @override
  Widget? get flexibleSpace {
    return SafeArea(
      child: Stack(
        children: [
          BackButton(),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Home',
              textAlign: TextAlign.center,
              style: textStyle,
            ),
          ),
          (tailingButton == null)
              ? Container()
              : Align(
                  alignment: Alignment.centerRight,
                  child: tailingButton!,
                )
        ],
      ),
    );
  }
}
