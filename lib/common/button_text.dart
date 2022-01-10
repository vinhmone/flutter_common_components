import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  final String text;
  final Function()? onClick;

  const ButtonText({
    Key? key,
    required this.text,
    this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
