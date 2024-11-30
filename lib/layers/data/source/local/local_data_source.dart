import 'package:isar/isar.dart';

import '../../../../common/common.dart';
import '../../../domain/model/chat_message.dart';
import '../../data.dart';


class LocalDataSource {
  final Isar _isar;

  LocalDataSource([Isar? isar]) : _isar = isar ?? locator();

  Future<void> addMessage(ChatMessageDAO dao) async {
    await _isar.writeTxn(() async {
      _isar.chatMessageDAOs.put(dao);
    });
  }

  Future<void> addMessages(List<ChatMessage> messages) async {
    for (var message in messages) {
      await addMessage(ChatMapper.localToDao(message));
    }
  }

  /// 모든 메시지를 가져오는 메서드
  Future<List<ChatMessageDAO>> getAllMessages() async {
    return await _isar.chatMessageDAOs.where().findAll();
  }
}

