import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_practice/layers/presentation/meeting/meeting_room_list_view.dart';
import 'package:riverpod_practice/layers/presentation/user/user_list_view.dart';

import 'main_frame_state.dart';

part 'main_frame_view_model.g.dart';

@riverpod
class MainFrameViewModel extends _$MainFrameViewModel {

  @override
  MainFrameState build() {
    return MainFrameState(
      selectedIndex: 0,
      widgetOptions: [
        const UserListView(),
        const MeetingRoomListView(),
      ],
    );
  }


  /// Handles item selection in the bottom navigation bar.
  onItemTapped(int index) {
    state = state.copyWith(selectedIndex: index);
  }
}