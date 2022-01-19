import 'package:baxter_common/common/app_bar_with_text_title.dart';
import 'package:baxter_common/common/button_rectangle.dart';
import 'package:baxter_common/common/text_form_border_rectangle.dart';
import 'package:baxter_common/util/util.dart';
import 'package:flutter/material.dart';

class EmailCodeScreen extends StatefulWidget {
  const EmailCodeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<EmailCodeScreen> createState() => _EmailCodeScreenState();
}

class _EmailCodeScreenState extends State<EmailCodeScreen> {
  final TextEditingController controller = TextEditingController();
  EmailValidate _emailCodeValid = EmailValidate.valid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBarWithTextTitle(
      //   showBackButton: true,
      //   background: Colors.transparent,
      //   contentColor: Colors.black,
      //   appElevation: 0.0,
      // ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        shadowColor: Colors.transparent,
        foregroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.15,
              left: 16.0,
              right: 16.0,
            ),
            child: Column(
              children: [
                const Image(
                  image: AssetImage(
                    'assets/logo.png',
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                _buildTextFormInvitationCode(),
                const SizedBox(
                  height: 50.0,
                ),
                _buildButtonVerify(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButtonVerify(BuildContext context) {
    return ButtonRectangle(
        text: 'Confirm',
        onClick: () {
          setState(() {
            _emailCodeValid = validateEmailCode(controller.text);
          });
        });
  }

  Widget _buildTextFormInvitationCode() {
    return TextFormBorderRectangle(
      title: 'An email address to prevent your account from being lost',
      // validate: (text) {
      //   return validateEmailFormat(text) ? null : 'Incorrect email address';
      // },
      borderWidth: 0.5,
      titleAndFormSpace: 16.0,
      inputType: TextInputType.text,
      controller: controller,
      onChanged: (text) {},
    );
  }
}
