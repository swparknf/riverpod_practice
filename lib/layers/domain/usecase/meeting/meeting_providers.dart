import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain.dart';

/// 회의목록을 가져오는 유스케이스 프로바이더
final fetchMeetingRoomUseCaseProvider = Provider<FetchMeetingRoomUseCase>((ref) {
  return FetchMeetingRoomUseCase();
});