import 'package:baxter_common/common/app_bar_with_text_title.dart';
import 'package:baxter_common/common/button_rectangle.dart';
import 'package:baxter_common/common/text_form_border_rectangle.dart';
import 'package:baxter_common/ui/login/email_code.dart';
import 'package:baxter_common/util/util.dart';
import 'package:flutter/material.dart';

class PhoneNumberCodeScreen extends StatefulWidget {
  final String? phoneNumber;

  const PhoneNumberCodeScreen({
    Key? key,
    this.phoneNumber,
  }) : super(key: key);

  @override
  State<PhoneNumberCodeScreen> createState() => _PhoneNumberCodeScreenState();
}

class _PhoneNumberCodeScreenState extends State<PhoneNumberCodeScreen> {
  final TextEditingController controller = TextEditingController();
  bool _phoneNumberCodeValid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarWithTextTitle(
        showBackButton: true,
        background: Colors.transparent,
        contentColor: Colors.black,
        appElevation: 0.0,
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
      text: 'Verify',
      onClick: (validatePhoneNumberCode(controller.text))
          ? () {
        setState(() {
          _phoneNumberCodeValid = true;
        });

        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const EmailCodeScreen(),
            ));
      }
          : () {
        setState(() {
          _phoneNumberCodeValid = false;
        });
      },
    );
  }

  Widget _buildTextFormInvitationCode() {
    return TextFormBorderRectangle(
      title: 'Enter the 6-digit code we sent to ${widget.phoneNumber}',
      validate: (text) {
        if (_phoneNumberCodeValid) {
          return null;
        } else {
          return 'Incorrect code';
        }
      },
      borderWidth: 0.5,
      titleAndFormSpace: 16.0,
      inputType: TextInputType.text,
      controller: controller,
      onChanged: (text) {},
      maxLength: 6,
    );
  }
}
