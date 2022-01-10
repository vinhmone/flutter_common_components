import 'package:flutter/material.dart';

class TextInputRectangle extends StatelessWidget {
  final String? Function(String?) validate;

  const TextInputRectangle({
    Key? key,
    required this.validate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        maxLines: 1,
        autovalidateMode: AutovalidateMode.always,
        textAlignVertical: TextAlignVertical.center,
        cursorColor: Colors.black,
        cursorHeight: 20.0,
        style: const TextStyle(
          fontSize: 14.0,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          errorStyle: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.bold,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.0,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.0,
            ),
          ),
        ),
        validator: (text) {
          return validate(text);
        },
      ),
    );
  }
}
