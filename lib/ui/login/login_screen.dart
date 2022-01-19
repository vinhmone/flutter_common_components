import 'package:baxter_common/common/app_bar_with_text_title.dart';
import 'package:baxter_common/common/button_rectangle.dart';
import 'package:baxter_common/common/button_text.dart';
import 'package:baxter_common/common/text_form_border_rectangle.dart';
import 'package:baxter_common/ui/login/auth_invitation_screen.dart';
import 'package:baxter_common/util/util.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithTextTitle(
        showBackButton: false,
        background: Colors.transparent,
        appElevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
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
                _buildTextFormPhoneNumber(),
                const SizedBox(
                  height: 50.0,
                ),
                _buildButtonLogin(context),
                _buildButtonForgotPassword(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButtonForgotPassword() {
    return ButtonText(
      text: 'Lost your phone number?',
      onClick: () {},
    );
  }

  Widget _buildButtonLogin(BuildContext context) {
    return ButtonRectangle(
      text: 'Login',
      onClick: (validatePhoneNumber(controller.text))
          ? () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => InvitationCodeScreen(
                      phoneNumber: controller.text,
                    ),
                  ));
            }
          : null,
    );
  }

  Widget _buildTextFormPhoneNumber() {
    return TextFormBorderRectangle(
      title: 'Enter your phone number',
      // validate: (text) {
      //   if (validatePhoneNumber(text)) {
      //     return null;
      //   } else {
      //     return 'Phone not valid!';
      //   }
      // },
      borderWidth: 0.5,
      titleAndFormSpace: 16.0,
      inputType: TextInputType.number,
      controller: controller,
      onChanged: (text) {
        setState(() {
          controller.text = formatPhoneNumber(text);
        });
        controller.selection = TextSelection.fromPosition(
          TextPosition(offset: controller.text.length),
        );
      },
      maxLength: 12,
    );
  }
}
