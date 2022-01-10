import 'package:baxter_common/common/avatar_circle.dart';
import 'package:baxter_common/common/button_rectangle.dart';
import 'package:baxter_common/common/button_text.dart';
import 'package:flutter/material.dart';

import 'common/text_input_border_rectangle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('App')),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextInputRectangle(
                validate: (text) {
                  return 'asd';
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const ButtonRectangle(
                text: 'Confirm',
              ),
              const SizedBox(
                height: 10,
              ),
              ButtonText(text: 'Resend'),
              const SizedBox(
                height: 10,
              ),
              AvatarCircle(),
            ],
          ),
        ),
      ),
    );
  }
}
