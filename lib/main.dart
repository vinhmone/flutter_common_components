import 'package:baxter_common/common/app_bar_with_text_title.dart';
import 'package:baxter_common/common/button_rectangle.dart';
import 'package:flutter/material.dart';

import 'common/avatar_circle.dart';
import 'common/chat_cover_image.dart';
import 'common/item_channel.dart';
import 'common/search_text_input.dart';
import 'common/simple_drop_down_button.dart';
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
          padding: const EdgeInsets.all(16.0),
          // color: Colors.blue,
          // child: _buildListItemChannel(),
          child: ListView(
            shrinkWrap: true,
            children: [
              _buildTextFormBorderRectangle(),
              const SizedBox(
                height: 10,
              ),
              _buildButtonRectangle(),
              const SizedBox(
                height: 10,
              ),
              _buildButtonRectangleText(),
              const SizedBox(height: 10),
              AvatarCircle(
                // height: 100,
                borderWidth: 0.0,
              ),
              const SizedBox(height: 10),
              _buildTextForm(),
              ..._buildAvatar(),
              // Container(
              //   width: 900,
              //   height: double.infinity,
              //   child: _buildListItemChannel(),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextForm() {
    return Row(
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
    );
  }

  Widget _buildButtonRectangleText() {
    return ButtonRectangle(
      text: 'Resend',
      textColor: Colors.black,
      backgroundColor: Colors.white,
      elevation: 0.0,
      onClick: () {},
    );
  }

  Widget _buildButtonRectangle() {
    return ButtonRectangle(
      text: 'Confirm',
      onClick: () {},
    );
  }

  Widget _buildTextFormBorderRectangle() {
    return TextFormBorderRectangle(
      title: 'Enter the 6-digit code we sent to 243-243',
    );
  }

  List<Widget> _buildAvatar() {
    final List<String?> list = ['Tran', 'Dinh', 'Vinh'];
    const double size = 50.0;
    return [
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
    ];
  }

  Widget _buildListItemChannel() {
    List<Channel> list = [Channel(groupName: 'Hacker')];
    final channel = list[0];
    return ListView.separated(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemBuilder: (context, index) {
        return ItemChannel(channel: list[index]);
      },
      itemCount: list.length,
      separatorBuilder: (_, index) => const Divider(
        color: Colors.black,
        height: 1,
      ),
    );
    // return ListView(
    //   children: [
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.start,
    //       children: [
    //         ChatCoverImage(
    //           chatType: channel.chatType,
    //           visibilityStatus: channel.visibilityStatus,
    //           imageUrl: channel.users.map((e) => e.avatarUrl).toList(),
    //           groupImage: channel.coverUrl,
    //           size: 100,
    //         ),
    //       ],
    //     ),
    //     // ..._buildAvatar(),
    //   ],
    // );
  }
}
