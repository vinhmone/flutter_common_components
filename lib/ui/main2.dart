import 'package:flutter/material.dart';

import 'login/log_in.dart';

void main() {
  runApp(const MyCommon());
}

class MyCommon extends StatelessWidget {
  const MyCommon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogInScreen(),
    );
  }
}
