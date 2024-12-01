
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_practice/layers/domain/domain.dart';

import '../../../common/common.dart';
import 'meeting_room_state.dart';

part 'meeting_room_list_view_model.g.dart';


@riverpod
class MeetingRoomListViewModel extends _$MeetingRoomListViewModel {
  /// 회의목록 리스트를 가져오기 위한 UseCase
  late final FetchMeetingRoomUseCase _useCase;

  @override
  MeetingRoomState build() {
    _useCase = ref.read(fetchMeetingRoomUseCaseProvider);
    return MeetingRoomState();
  }

  /// 서버로부터 회의 목록을 가져옵니다.
  Future<void> fetchMeetingRoomList() async {
    try {
      final users = await _useCase.execute();
      state = state.copyWith(
        isLoading: false,
        meetingRoomList: List.from(users),
      );
    }
    catch(e) {
      state = state.copyWith(
        isLoading: false,
        isError: true,
        errorMessage: 'An error occurred while fetching users',
      );
    }

  }

  /// 회의 리스트를 다시 가져오기 위해 호출됩니다.
  onRetry() {
    state = state.copyWith(
      isLoading: true,
      isError: false,
      errorMessage: 'An error occurred while fetching users',
      meetingRoomList: [],
    );

    fetchMeetingRoomList();
  }
}