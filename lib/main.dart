import 'package:baxter_common/common/app_bar_with_text_title.dart';
import 'package:baxter_common/common/avatar_circle.dart';
import 'package:baxter_common/common/button_rectangle.dart';
import 'package:baxter_common/common/button_text.dart';
import 'package:baxter_common/common/search_text_input.dart';
import 'package:baxter_common/common/simple_drop_down_button.dart';
import 'package:flutter/material.dart';

import 'common/chat_cover_image.dart';
import 'common/text_form_border_rectangle.dart';
import 'common/text_form_with_title.dart';
import 'model/channel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String?> list = ['Tran', 'Dinh', 'Vinh'];
    const double size = 50.0;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBarWithTextTitle(
          titleText: 'Home',
          textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          tailingWidget: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          // contentColor: Colors.red,
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          // color: Colors.blue,
          child: ListView(
            children: [
              TextFormBorderRectangle(
                title: 'Enter the 6-digit code we sent to 243-243',
                validate: (text) {
                  return 'asd';
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ButtonRectangle(
                text: 'Confirm',
                onClick: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              ButtonRectangle(
                text: 'Resend',
                textColor: Colors.black,
                backgroundColor: Colors.white,
                elevation: 0.0,
                onClick: () {},
              ),
              const SizedBox(height: 10),
              AvatarCircle(
                // height: 100,
                borderWidth: 0.0,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Flexible(
                    child: TextFormWithTitle(
                      titleText: 'First name',
                      hintText: 'Your name',
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Flexible(
                    child: TextFormWithTitle(
                      titleText: 'Last name',
                      hintText: 'Your name',
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: SimpleDropDownButton(
                      list: list,
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  Flexible(
                    child: SimpleDropDownButton(
                      list: list,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SearchTextInput(),
              const SizedBox(height: 10),
              Column(
                children: [
                  const ChatCoverImage(
                    imageUrl: [
                      'https://freepikpsd.com/file/2019/11/dog-photo-png-2-Transparent-Images.png'
                    ],
                    visibilityStatus: VisibilityStatus.offline,
                    size: size,
                  ),
                  const SizedBox(height: 10),
                  const ChatCoverImage(
                    chatType: ChatType.group,
                    imageUrl: [
                      'https://freepikpsd.com/file/2019/11/dog-photo-png-2-Transparent-Images.png'
                    ],
                    visibilityStatus: VisibilityStatus.online,
                    size: size * 2,
                  ),
                  const SizedBox(height: 10),
                  const ChatCoverImage(
                    chatType: ChatType.group,
                    imageUrl: [
                      'https://freepikpsd.com/file/2019/11/dog-photo-png-2-Transparent-Images.png'
                    ],
                    visibilityStatus: VisibilityStatus.online,
                    size: size * 4,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      ChatCoverImage(
                        chatType: ChatType.group,
                        imageUrl: [
                          'https://freepikpsd.com/file/2019/11/dog-photo-png-2-Transparent-Images.png'
                        ],
                        visibilityStatus: VisibilityStatus.online,
                        size: size,
                      ),
                      ChatCoverImage(
                        chatType: ChatType.group,
                        imageUrl: [
                          'https://freepikpsd.com/file/2019/11/dog-photo-png-2-Transparent-Images.png'
                        ],
                        visibilityStatus: VisibilityStatus.online,
                        size: size * 1.5,
                      ),
                      ChatCoverImage(
                        chatType: ChatType.group,
                        imageUrl: [
                          'https://freepikpsd.com/file/2019/11/dog-photo-png-2-Transparent-Images.png'
                        ],
                        visibilityStatus: VisibilityStatus.online,
                        size: 100,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
