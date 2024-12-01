import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_practice/layers/presentation/user/user_list_state.dart';

import '../../../common/common.dart';
import '../../domain/domain.dart';

part 'user_list_view_model.g.dart';
/// @riverpod 어노테이션은 Riverpod라이브러리에서 사용되는 코드 생성도구이다
/// 상태관리 코드를 자동 생성할 수 있으며 개발자는 간견할고 유지보수하기 쉬운 코드
/// 를 작성할 수 있다.
///
///
/// @riverpod을 사용하여 UserListNotifier 클래스를 생성합니다.
/// 이 클래스는 UserListState를 사용하여 상태를 관리합니다.
/// StateNotifier와 연계: 클래스 기반의 상태 관리를 사용할 수 있도록 지원합니다.
@riverpod
class UserListViewModel extends _$UserListViewModel {
  late final FetchUsersUseCase _useCase;

  @override
  UserListState build() {
    _useCase = ref.read(fetchUsersUseCaseProvider);
    return  UserListState(
      isLoading: true,
      isError: false,
      errorMessage: '',
      userList: [],
    );
  }

  // Fetch user list
  Future<void> fetchUserList() async {
    state = state.copyWith(isLoading: true, isError: false, errorMessage: '', userList: []);

    try {
      final users = await _useCase.execute();
      state = state.copyWith(
        isLoading: false,
        userList: List.from(users),
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        isError: true,
        errorMessage: 'An error occurred while fetching users',
      );
    }
  }

  // Retry fetching the user list
  void onRetry() {
    state = state.copyWith(
      isLoading: true,
      isError: false,
      userList: [],
    );
    fetchUserList();
  }
}
