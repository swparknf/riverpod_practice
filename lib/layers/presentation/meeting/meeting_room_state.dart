
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';
part 'meeting_room_state.freezed.dart';

@freezed
class MeetingRoomState with _$MeetingRoomState {
  factory MeetingRoomState({
    @Default(true) bool isLoading,
    @Default(false) bool isError,
    @Default('') String errorMessage,
    @Default([]) List<MeetingRoom> meetingRoomList,
  }) = _MeetingRoomState;
}

