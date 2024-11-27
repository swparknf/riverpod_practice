// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userListNotifierHash() => r'dd4b7348acd7aad123920bc7a7191f72296f431e';

/// @riverpod 어노테이션은 Riverpod라이브러리에서 사용되는 코드 생성도구이다
/// 상태관리 코드를 자동 생성할 수 있으며 개발자는 간견할고 유지보수하기 쉬운 코드
/// 를 작성할 수 있다.
///
///
/// @riverpod을 사용하여 UserListNotifier 클래스를 생성합니다.
/// 이 클래스는 UserListState를 사용하여 상태를 관리합니다.
/// StateNotifier와 연계: 클래스 기반의 상태 관리를 사용할 수 있도록 지원합니다.
///
/// Copied from [UserListNotifier].
@ProviderFor(UserListNotifier)
final userListNotifierProvider =
    AutoDisposeNotifierProvider<UserListNotifier, UserListState>.internal(
  UserListNotifier.new,
  name: r'userListNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userListNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserListNotifier = AutoDisposeNotifier<UserListState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
