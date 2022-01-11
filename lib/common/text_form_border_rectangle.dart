import 'package:flutter/material.dart';

class TextFormBorderRectangle extends StatelessWidget {
  final String title;
  final double radius;
  final double borderWidth;
  final Color borderColor;
  final Color errorBorderColor;
  final TextStyle inputTextStyle;
  final TextStyle titleTextStyle;
  final TextStyle errorStyle;
  final TextInputType inputType;
  final bool autoFocus;
  final int? maxLine;
  final TextEditingController? controller;

  final String? Function(String?) validate;

  const TextFormBorderRectangle({
    Key? key,
    this.title = '',
    this.radius = 10.0,
    this.borderWidth = 1.0,
    this.borderColor = Colors.black,
    this.errorBorderColor = Colors.red,
    this.inputTextStyle = const TextStyle(
      fontSize: 14.0,
      color: Colors.black,
    ),
    this.titleTextStyle = const TextStyle(
      fontSize: 11.0,
      color: Color(0xFF697C8E),
    ),
    this.errorStyle = const TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.bold,
    ),
    this.inputType = TextInputType.text,
    this.autoFocus = false,
    this.maxLine,
    this.controller,
    required this.validate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildTitleText(),
        const SizedBox(
          height: 2,
        ),
        _buildTextForm(),
      ],
    );
  }

  Widget _buildTitleText() {
    return FractionallySizedBox(
      widthFactor: 0.5,
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: titleTextStyle,
      ),
    );
  }

  Widget _buildTextForm() {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        minLines: 1,
        maxLines: maxLine,
        autofocus: autoFocus,
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        textAlignVertical: TextAlignVertical.center,
        cursorColor: Colors.black,
        cursorHeight: 20.0,
        style: inputTextStyle,
        keyboardType: inputType,
        decoration: InputDecoration(
          errorStyle: errorStyle,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: BorderSide(
              color: borderColor,
              width: borderWidth,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: BorderSide(
              color: borderColor,
              width: borderWidth,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: BorderSide(
              color: errorBorderColor,
              width: borderWidth,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: BorderSide(
              color: errorBorderColor,
              width: borderWidth,
            ),
          ),
        ),
        validator: validate,
      ),
    );
  }
}
