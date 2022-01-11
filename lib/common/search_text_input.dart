import 'package:flutter/material.dart';

class SearchTextInput extends StatelessWidget {
  final String hintText;
  final TextStyle inputStyle;
  final TextStyle hintStyle;
  final Color backgroundColor;
  final bool autoFocus;
  final Function(String)? onClick;

  const SearchTextInput({
    Key? key,
    this.hintText = '',
    this.inputStyle = const TextStyle(
      color: Colors.black,
    ),
    this.hintStyle = const TextStyle(
      color: Colors.black,
    ),
    this.backgroundColor = const Color(0xFFC4C4C4),
    this.autoFocus = false,
    this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      minLines: 1,
      maxLines: 1,
      style: inputStyle,
      cursorColor: Colors.black,
      cursorHeight: 20.0,
      decoration: InputDecoration(
        filled: true,
        hintText: hintText,
        hintStyle: hintStyle,
        suffixIcon: const Icon(
          Icons.search,
          color: Colors.black,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        fillColor: backgroundColor,
        focusColor: backgroundColor,
        contentPadding: const EdgeInsets.only(left: 10),
      ),
      autofocus: autoFocus,
      onSubmitted: onClick,
    );
  }
}
