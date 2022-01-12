import 'package:baxter_common/model/base_message.dart';

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
  List<BaseMessage> messages;
  VisibilityStatus visibilityStatus;
  ChatType chatType;

  Channel({
    this.coverUrl,
    required this.groupName,
    this.messages = const [],
    this.visibilityStatus = VisibilityStatus.offline,
    this.chatType = ChatType.group,
  });

  String get chatType => this.chatType;
}
