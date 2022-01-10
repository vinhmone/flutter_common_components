import 'package:flutter/material.dart';

class ButtonRectangle extends StatelessWidget {
  final String text;
  final Function()? onClick;

  const ButtonRectangle({
    Key? key,
    required this.text,
    this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: MaterialButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
        color: const Color(0xffA838FF),
      ),
    );
  }
}
