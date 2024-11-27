import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain.dart';

/// 유저 목록을 가져오는 유스케이스 프로바이더
final fetchUsersUseCaseProvider = Provider<FetchUsersUseCase>((ref) {
  return FetchUsersUseCase();
});