
import 'package:baxter_common/utils/constant.dart';
import 'package:flutter/material.dart';

class TextFormBorderRectangle extends StatelessWidget {
  const TextFormBorderRectangle({
    Key? key,
    this.title = kEmptyString,
    this.radius = kDefaultBorderSize,
    this.borderWidth = kDefaultBorderWidth,
    this.borderColor = kDefaultBorderColor,
    this.errorBorderColor = kDefaultErrorBorderColor,
    this.inputTextStyle = kInputTextStyle,
    this.titleTextStyle = const TextStyle(
      fontSize: 11.0,
      color: kTextLightColor,
    ),
    this.errorStyle = const TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.bold,
    ),
    this.inputType = TextInputType.text,
    this.autoFocus = false,
    this.maxLine,
    this.maxLength,
    this.controller,
    this.titleAndFormSpace = 2,
    this.errorText,
    this.onChanged,
    this.titleWidthFactor = 0.5,
  }) : super(key: key);

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
  final int? maxLength;
  final TextEditingController? controller;
  final double? titleAndFormSpace;
  final Function(String)? onChanged;
  final String? errorText;
  final double titleWidthFactor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTitleText(),
        SizedBox(
          height: titleAndFormSpace,
        ),
        _buildTextForm(),
      ],
    );
  }

  Widget _buildTitleText() {
    return FractionallySizedBox(
      widthFactor: titleWidthFactor,
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
        maxLength: maxLength,
        autofocus: autoFocus,
        controller: controller,
        textAlignVertical: TextAlignVertical.center,
        cursorColor: kDefaultCursorColor,
        cursorHeight: kDefaultCursorHeight,
        style: inputTextStyle,
        keyboardType: inputType,
        decoration: InputDecoration(
          errorStyle: errorStyle,
          counterText: kEmptyString,
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
          errorText: errorText,
        ),
        onChanged: onChanged,
      ),
    );
  }
}
