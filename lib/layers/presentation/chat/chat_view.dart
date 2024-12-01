import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/layers/presentation/widgets/future_handler.dart';

import '../widgets/frame_scaffold.dart';
import 'chat_view_model.dart';
import 'widget/message_list.dart';
import 'widget/text_composer.dart';

class ChatView extends ConsumerStatefulWidget {
  final String title;
  final String roomId;

  const ChatView({
    super.key,
    required this.title,
    required this.roomId,
  });

  @override
  ConsumerState<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends ConsumerState<ChatView> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(chatViewModelProvider.notifier).initRoomId(widget.roomId);
      ref.read(chatViewModelProvider.notifier).fetchChatMessageList();
    });
  }

  @override
  Widget build(BuildContext context) {
   final state = ref.watch(chatViewModelProvider);

    return FrameScaffold(
      appBarTitle: widget.title,
      isDefaultPadding: false,
      isKeyboardHide: true,
      body: FutureHandler(
        isLoading: state.isLoading,
        isError: state.isError,
        errorMessage: state.errorMessage,
        onRetry: ref.read(chatViewModelProvider.notifier).onRetry,
        child: Column(
          children: [
            /// 문자 리스트(말풍선 리스트)
            MessageList(
              chatMessages: state.chatMessageList,
            ),

            /// 메시지 입력란
            const TextComposer(),
          ],
        ),
      ),
    );
  }
}
