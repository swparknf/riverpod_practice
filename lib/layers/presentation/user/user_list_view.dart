import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/layers/presentation/user/user_list_view_model.dart';
import 'package:riverpod_practice/layers/presentation/user/widget/user_tile.dart';
import 'package:riverpod_practice/layers/presentation/widgets/future_handler.dart';

/// 유저 리스트 화면
class UserListView extends ConsumerStatefulWidget {
  const UserListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UserListViewState();
}

class _UserListViewState extends ConsumerState<UserListView> {
  @override
  void initState() {
    super.initState();
    /// 화면이 로드되면 사용자 목록을 가져옵니다.
    /// userListNotifierProvider.notifier 상태변경 로직에만 접근
    /// UI와의 불필요한 재빌드 방지
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(userListViewModelProvider.notifier).fetchUserList();
    });
  }

  @override
  Widget build(BuildContext context) {
    // 상태를 watch하여 UI에 반영
    final state = ref.watch(userListViewModelProvider);

    return FutureHandler(
      isLoading: state.isLoading,
      isError: state.isError,
      errorMessage: state.errorMessage,
      onRetry: () => ref.read(userListViewModelProvider.notifier).onRetry(),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: state.userList.length,
              itemBuilder: (context, index) => UserTile(
                user: state.userList[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
