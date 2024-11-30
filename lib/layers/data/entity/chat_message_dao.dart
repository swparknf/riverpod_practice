import 'package:isar/isar.dart';

part 'chat_message_dao.g.dart';

@collection
class ChatMessageDAO {
  Id id = Isar.autoIncrement; // Isar가 자동으로 생성하는 ID
  String? roomId;
  String? messageId;
  String? sender;
  String? content;
  String? timestamp;

  ChatMessageDAO({
    this.roomId,
    this.messageId,
    this.sender,
    this.content,
    this.timestamp,
  });
}
