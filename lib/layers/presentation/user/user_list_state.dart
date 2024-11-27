
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'user_list_state.freezed.dart';

@freezed
class UserListState with _$UserListState {
   factory UserListState({
    @Default(true) bool isLoading,
     @Default(false) bool isError,
     @Default('') String errorMessage,
     @Default([]) List<User> userList,
  }) = _UserListState;
}