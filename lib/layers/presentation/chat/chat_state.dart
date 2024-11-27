import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/model/chat_message.dart';

part 'chat_state.freezed.dart';

@freezed
class ChatState with _$ChatState {
  factory ChatState({
    @Default(true) bool isLoading,
    @Default(false) bool isError,
    @Default('') String errorMessage,
    @Default('') String roomId,
    @Default([]) List<ChatMessage> chatMessageList,
    @Default([]) List<ChatMessage> rawMessageList,
  }) = _ChatState;
}