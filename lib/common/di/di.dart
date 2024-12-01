import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../layers/data/data.dart';
import '../../layers/domain/domain.dart';

part 'di.g.dart';
// isar -----------------------------------------------------------------------
final isarProvider = Provider<Isar>((ref) {
  throw UnimplementedError(); // main에서 isarProvider는 직접 초기화되고 전달되므로, 기본적으로는 사용할 필요가 없음
});

// data_sources ----------------------------------------------------------------
@riverpod
RemoteDataSources remoteDataSources(Ref ref) {
  return RemoteDataSources();
}

@riverpod
LocalDataSource localDataSources(Ref ref) {
  final localDB =  ref.watch(isarProvider);
  return LocalDataSource(localDB);
}


// repository ------------------------------------------------------------------
@riverpod
UserRepository userRepository(Ref ref){
  final remote = ref.watch(remoteDataSourcesProvider);
  return UserRepositoryImp(remote);
}

@riverpod
MeetingRepository meetingRepository(Ref ref){
  final remote = ref.watch(remoteDataSourcesProvider);
  return MeetingRepositoryImp(remote);
}

@riverpod
ChatRepository chatRepository(Ref ref){
  final remote = ref.watch(remoteDataSourcesProvider);
  return ChatRemoteRepositoryImp(remote);
}

@riverpod
ChatLocalRepository chatLocalRepository(Ref ref)  {
  final localDB = ref.watch(localDataSourcesProvider);
  return ChatLocalRepositoryImp(localDB);
}


// use case --------------------------------------------------------------------
@riverpod
FetchUsersUseCase fetchUsersUseCase(Ref ref) {
  final repository = ref.watch(userRepositoryProvider);
  return FetchUsersUseCase(repository);
}

@riverpod
FetchMeetingRoomUseCase fetchMeetingRoomUseCase(Ref ref) {
  final repository = ref.watch(meetingRepositoryProvider);
  return FetchMeetingRoomUseCase(repository);
}

@riverpod
FetchChatMessageUseCase fetchChatMessageUseCase(Ref ref) {
  final repository = ref.watch(chatRepositoryProvider);
  return FetchChatMessageUseCase(repository);
}

@riverpod
AddChatMessageUseCase addChatMessageUseCase(Ref ref)  {
  final repository = ref.watch(chatLocalRepositoryProvider);
  return AddChatMessageUseCase(repository);
}

@riverpod
GetAllChatMessageUseCase getAllChatMessageUseCase(Ref ref)  {
  final repository =  ref.watch(chatLocalRepositoryProvider);
  return GetAllChatMessageUseCase(repository);
}




