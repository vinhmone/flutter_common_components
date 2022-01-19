import 'package:baxter_common/ui/profile_prompt_name/profile_prompt_name_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyCommon());
}

class MyCommon extends StatelessWidget {
  const MyCommon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePromptNameScreen(),
    );
  }
}
