import 'package:baxter_common/common/app_bar_with_text_title.dart';
import 'package:baxter_common/common/item_channel.dart';
import 'package:baxter_common/model/channel.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ListChannel());
}

class ListChannel extends StatelessWidget {
  const ListChannel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBarWithTextTitle(
          titleText: 'Home',
        ),
        body: Container(
          child: _buildListItemChannel(),
        ),
      ),
    );
  }

  Widget _buildListItemChannel() {
    List<Channel> list = [
      Channel(groupName: 'Hacker'),
      Channel(
        groupName: 'Vinh Tran',
        chatType: ChatType.private,
      )
    ];
    return ListView.separated(
      itemBuilder: (context, index) {
        return ItemChannel(channel: list[index], size: MediaQuery.of(context).size.width/4,);
      },
      itemCount: list.length,
      separatorBuilder: (_, index) => const Divider(
        color: Colors.black,
        thickness: 1,
      ),
    );
  }
}
