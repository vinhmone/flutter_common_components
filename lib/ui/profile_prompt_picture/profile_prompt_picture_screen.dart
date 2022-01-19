import 'package:baxter_common/common/app_bar_with_text_title.dart';
import 'package:baxter_common/common/avatar_circle.dart';
import 'package:baxter_common/common/button_rectangle.dart';
import 'package:baxter_common/common/text_form_border_rectangle.dart';
import 'package:baxter_common/common/text_form_with_title.dart';
import 'package:baxter_common/utils/constant.dart';
import 'package:flutter/material.dart';

class ProfilePromptPictureScreen extends StatelessWidget {
  const ProfilePromptPictureScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarWithTextTitle(
        titleText: 'Set up profile',
        // background: Colors.transparent,
        contentColor: Colors.white,
        textStyle: TextStyle(color: Colors.white),
        appElevation: 0.0,
        tailingWidget: TextButton(
          onPressed: () {},
          child: Text(
            'Skip',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: const _ProfilePromptPictureScreen(),
    );
  }
}

class _ProfilePromptPictureScreen extends StatelessWidget {
  const _ProfilePromptPictureScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(
          top: 30.0,
          left: kDefaultPadding,
          right: kDefaultPadding,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Let's set your profile photo",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Profile photos help parents recognize and connect with each other on Baxter, which builds a strong, trusted community.",
              style: TextStyle(
                fontSize: 11,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            InkWell(
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.15,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: AvatarCircle(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Choose a photo',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ButtonRectangle(
                  text: 'Take a photo',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
