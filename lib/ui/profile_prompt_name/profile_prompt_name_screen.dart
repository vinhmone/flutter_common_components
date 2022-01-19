import 'package:baxter_common/common/app_bar_with_text_title.dart';
import 'package:baxter_common/common/button_rectangle.dart';
import 'package:baxter_common/common/text_form_border_rectangle.dart';
import 'package:baxter_common/common/text_form_with_title.dart';
import 'package:baxter_common/ui/profile_prompt_address/profile_prompt_address_screen.dart';
import 'package:baxter_common/utils/constant.dart';
import 'package:flutter/material.dart';

class ProfilePromptNameScreen extends StatelessWidget {
  const ProfilePromptNameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarWithTextTitle(
        titleText: 'Set up profile_prompt_name',
        showBackButton: false,
        // background: Colors.transparent,
        contentColor: Colors.white,
        textStyle: TextStyle(color: Colors.white),
        appElevation: 0.0,
      ),
      body: const _ProfilePromptNameScreen(),
    );
  }
}

class _ProfilePromptNameScreen extends StatelessWidget {
  const _ProfilePromptNameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(
          top: 30.0,
          left: kDefaultPadding,
          right: kDefaultPadding,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What's your name?",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Baxter exists to help parents connect with each other more easily. Your name will help other parents identify who yoou really are.",
              style: TextStyle(
                fontSize: 11,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Flexible(
                  child: TextFormWithTitle(
                    titleText: 'First name',
                    hintText: '',
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                Flexible(
                  child: TextFormWithTitle(
                    titleText: 'Last name',
                    hintText: '',
                  ),
                ),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ButtonRectangle(
                  text: 'Next',
                  onClick: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ProfilePromptAddressScreen(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
