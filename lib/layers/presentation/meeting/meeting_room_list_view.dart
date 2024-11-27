import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/layers/presentation/meeting/widget/meeting_room_tile.dart';

import '../widgets/future_handler.dart';
import 'meeting_room_list_notifier.dart';

class MeetingRoomListView extends ConsumerStatefulWidget {
  const MeetingRoomListView({super.key});

  @override
  ConsumerState<MeetingRoomListView> createState() => _MeetingRoomListViewState();
}

class _MeetingRoomListViewState extends ConsumerState<MeetingRoomListView> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(meetingRoomListNotifierProvider.notifier).fetchMeetingRoomList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(meetingRoomListNotifierProvider);
    final meetingRoomList = state.meetingRoomList;

    return FutureHandler(
      isLoading: state.isLoading,
      isError: state.isError,
      errorMessage: state.errorMessage,
      onRetry: ref.read(meetingRoomListNotifierProvider.notifier).onRetry,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: meetingRoomList.length,
              itemBuilder: (context, index) => MeetingRoomTile(
                meetingRoom: meetingRoomList[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
