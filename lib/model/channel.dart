import 'package:baxter_common/model/base_message.dart';
import 'package:baxter_common/model/user.dart';

enum ChatType {
  private,
  group,
}

enum VisibilityStatus {
  disable,
  online,
  offline,
}

class Channel {
  String? coverUrl;
  String groupName;
  List<User> users;
  List<BaseMessage> messages;
  VisibilityStatus visibilityStatus;
  ChatType chatType;

  Channel({
    this.coverUrl,
    this.groupName = '',
    this.users = const [],
    this.messages = const [],
    this.visibilityStatus = VisibilityStatus.offline,
    this.chatType = ChatType.group,
  });

}
