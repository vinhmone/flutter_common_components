
import 'package:baxter_common/utils/constant.dart';
import 'package:flutter/material.dart';

class ButtonRectangle extends StatelessWidget {
  const ButtonRectangle({
    Key? key,
    this.text = kEmptyString,
    this.fontSize = kDefaultFontSize,
    this.textColor = Colors.white,
    this.border = kDefaultBorderSize,
    this.padding = kDefaultPadding,
    this.elevation = kDefaultElevation,
    this.backgroundColor = kPrimaryColor,
    this.onClick,
  }) : super(key: key);

  final String text;
  final double fontSize;
  final Color textColor;
  final double border;
  final double padding;
  final double elevation;
  final Color backgroundColor;
  final Function()? onClick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: MaterialButton(
        onPressed: onClick,
        disabledColor: backgroundColor,
        disabledTextColor: textColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(border),
        ),
        color: backgroundColor,
        elevation: elevation,
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
