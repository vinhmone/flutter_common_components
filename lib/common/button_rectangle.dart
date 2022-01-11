import 'package:flutter/material.dart';

class ButtonRectangle extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color textColor;
  final double border;
  final double padding;
  final double elevation;
  final Color backgroundColor;
  final Function()? onClick;

  const ButtonRectangle({
    Key? key,
    this.text = '',
    this.fontSize = 16.0,
    this.textColor = Colors.white,
    this.border = 10.0,
    this.padding = 16.0,
    this.elevation = 1.0,
    this.backgroundColor = const Color(0xffA838FF),
    this.onClick,
  }) : super(key: key);

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
        color: backgroundColor,
        elevation: elevation,
      ),
    );
  }
}
