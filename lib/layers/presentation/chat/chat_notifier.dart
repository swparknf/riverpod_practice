import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_practice/layers/domain/usecase/chat/chat_providers.dart';
import '../../../common/common.dart';
import '../../domain/model/authorization.dart';
import '../../domain/domain.dart';
import 'chat_state.dart';

part 'chat_notifier.g.dart';

@riverpod
class ChatNotifier extends _$ChatNotifier {

  /// UseCase 인스턴스
  late final FetchChatMessageUseCase _fetchChatMessageUseCase;
  late final AddChatMessageUseCase _addChatMessageUseCase;
  late final GetAllChatMessageUseCase _getAllChatMessageUseCase;

  @override
  ChatState build() {
    _fetchChatMessageUseCase = ref.read(fetchChatMessageUseCaseProvider);
    _addChatMessageUseCase = ref.read(addChatMessageUseCaseProvider);
    _getAllChatMessageUseCase = ref.read(getAllChatMessageUseCaseProvider);
    return ChatState();
  }

  /// 방 ID 초기화
  initRoomId(String roomId) {
    state =  state.copyWith(
      roomId: roomId,
    );
  }

  /// 채팅 메시지 목록을 가져오는 함수
  Future<void> fetchChatMessageList() async {
    try {
      final localMessages = _getAllChatMessageUseCase.execute(); // 로컬 메시지 로드
      state = state.copyWith(
        isLoading: false,
       rawMessageList: List.from(localMessages),
      );

      if (localMessages.isNotEmpty) {
        state = state.copyWith(
          isLoading: false,
          chatMessageList: List.from(
              Etc.filterMessagesByRoomId(localMessages, state.roomId).reversed),
        );
      } else {
        await _fetchAndStoreChatMessages(); // 로컬에 데이터가 없다면 API 호출
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        isError: true,
        errorMessage: AppStrings.unexpectedError,
      );
    }
  }

  /// 외부 API 호출하여 메시지 가져오고 로컬에 저장하는 함수
  Future<void> _fetchAndStoreChatMessages() async {
    final chatMessages = await _fetchChatMessageUseCase.execute();
    state = state.copyWith(
      isLoading: false,
      rawMessageList: List.from(chatMessages),
      chatMessageList: List.from(Etc.filterMessagesByRoomId(chatMessages, state.roomId).reversed),
    );
    if (state.chatMessageList.isNotEmpty) {
      await _addChatMessageUseCase.execute(chatMessages);
    }
  }

  /// 메시지 전송 함수
  Future<void> sendMessage(String msg) async {
    try {
      final inputMessage = createChatMessage(msg);
      await _addChatMessageUseCase.execute([inputMessage]); // 로컬 DB에 메시지 저장

      state = state.copyWith(
        chatMessageList: [inputMessage, ...state.chatMessageList],
      );
    } catch (e) {
      state = state.copyWith(
        isError: true,
        errorMessage: AppStrings.unexpectedError,
      );
    }
  }

  /// 새로운 채팅 메시지를 생성하는 함수
  createChatMessage(String msg) {
    return ChatMessage(
      roomId: state.roomId,
      messageId: 'msg${state.rawMessageList.length + 1}',
      sender: Authorization().userId,
      content: msg,
      timestamp: DateTime.now(),
    );
  }

  /// 실패 시 재시도 함수
  void onRetry() {
    state = state.copyWith(
      isLoading: true,
      isError: false,
      chatMessageList: [],
    );
    fetchChatMessageList();
  }
}
