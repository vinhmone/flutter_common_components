import 'package:baxter_common/common/app_bar_with_text_title.dart';
import 'package:baxter_common/common/button_rectangle.dart';
import 'package:baxter_common/common/text_form_border_rectangle.dart';
import 'package:baxter_common/common/text_form_with_title.dart';
import 'package:baxter_common/ui/profile_prompt_picture/profile_prompt_picture_screen.dart';
import 'package:baxter_common/utils/constant.dart';
import 'package:flutter/material.dart';

class ProfilePromptAddressScreen extends StatelessWidget {
  const ProfilePromptAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarWithTextTitle(
        titleText: 'Set up profile_prompt_address',
        // background: Colors.transparent,
        contentColor: Colors.white,
        textStyle: TextStyle(color: Colors.white),
        appElevation: 0.0,
      ),
      body: const _ProfilePromptAddressScreen(),
    );
  }
}

class _ProfilePromptAddressScreen extends StatelessWidget {
  const _ProfilePromptAddressScreen({Key? key}) : super(key: key);

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
              "Where do you live?",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Your address will help us locate your neighborhood, which will be shown in your profile. It will also be helpful for coordinating activities with other parents. We'll never share your address without your permission.",
              style: TextStyle(
                fontSize: 11,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormWithTitle(
              titleText: 'Street Address',
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ButtonRectangle(
                  text: 'Next',
                  onClick: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ProfilePromptPictureScreen(),
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
