import '../../domain/model/model.dart';
import '../data.dart';

class ChatMapper {
  /// Remote Entity -> Model
  static ChatMessage remoteToDomain(ChatMessageDTO dto) {
    return ChatMessage(
      roomId: dto.roomId,
      messageId: dto.messageId,
      sender: dto.sender,
      content: dto.content,
      timestamp: dto.timestamp,
    );
  }

  /// Local Entity -> Model
  static ChatMessage localToDomain(ChatMessageDAO dao) {
    return ChatMessage(
      roomId: dao.roomId!,
      messageId: dao.messageId!,
      sender: dao.sender!,
      content: dao.content!,
      timestamp: DateTime.parse(dao.timestamp!),
    );
  }

  /// Model -> Local Entity
  static ChatMessageDAO localToDao(ChatMessage message) {
    return ChatMessageDAO(
      roomId: message.roomId,
      messageId: message.messageId,
      sender: message.sender,
      content: message.content,
      timestamp: message.timestamp.toString(),
    );
  }

  /// ChatMessageDTO 리스트를 ChatMessage 리스트로 변환하는 메서드
  static List<ChatMessage> romteToDomainList(List<ChatMessageDTO> dtoList) {
    return dtoList.map((dto) => remoteToDomain(dto)).toList();
  }
  /// ChatMessageDAO 리스트를 ChatMessage 리스트로 변환하는 메서드
  static List<ChatMessage> localToDomainList(List<ChatMessageDAO> daoList) {
    return daoList.map((dao) => localToDomain(dao)).toList();
  }
}
