import 'package:flutter/material.dart';

class TextFormWithTitle extends StatelessWidget {
  final String titleText;
  final String hintText;
  final TextStyle titleStyle;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final TextInputType textInputType;
  final bool autoFocus;
  final int maxLine;
  final TextEditingController? controller;

  const TextFormWithTitle({
    Key? key,
    this.titleText = '',
    this.hintText = '',
    this.titleStyle = const TextStyle(
      color: Colors.black,
      fontSize: 12,
    ),
    this.inputTextStyle,
    this.hintStyle,
    this.textInputType = TextInputType.text,
    this.autoFocus = false,
    this.maxLine = 1,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: titleStyle,
        ),
        TextFormField(
          cursorColor: Colors.black,
          keyboardType: textInputType,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          minLines: 1,
          maxLines: maxLine,
          controller: controller,
          style: inputTextStyle,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: hintStyle,
            enabledBorder: _buildUnderlineInputBorder(),
            focusedBorder: _buildUnderlineInputBorder(),
            errorBorder: _buildUnderlineInputBorder(),
            contentPadding: const EdgeInsets.only(
              top: 10,
              bottom: 4,
            ),
            border: InputBorder.none,
            isDense: true,
          ),
          autofocus: autoFocus,
          validator: (text) {
            return (text == null || text.isEmpty) ? 'Required**' : null;
          },
        ),
      ],
    );
  }

  UnderlineInputBorder _buildUnderlineInputBorder() {
    return const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 1,
      ),
    );
  }
}
