import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../../layers/data/data.dart';
import '../../layers/domain/domain.dart';

/// getIt, inject, locator
final locator = GetIt.instance;

initLocator() async {

  // await Hive.initFlutter(); // Hive 초기화
  // Hive.registerAdapter(ChatMessageDAOAdapter()); // Message 모델 어댑터 등록
  // var chatBox = await Hive.openBox<ChatMessageDAO>('chat'); // Hive Box 열기

  final dir =  await getApplicationDocumentsDirectory();
  final isar = await Isar.open([ChatMessageDAOSchema],directory: dir.path);

  locator.registerSingleton<LocalDataSource>(LocalDataSource(isar));

  locator.registerLazySingleton<RemoteDataSources>(() => RemoteDataSources());

  locator.registerLazySingleton<UserRepository>(() => UserRepositoryImp(locator<RemoteDataSources>()));
  locator.registerLazySingleton<MeetingRepository>(() => MeetingRepositoryImp(locator<RemoteDataSources>()));
  locator.registerLazySingleton<ChatRepository>(() => ChatRemoteRepositoryImp(locator<RemoteDataSources>()));
  locator.registerLazySingleton<ChatLocalRepository>(() => ChatLocalRepositoryImp(locator<LocalDataSource>()));

  locator.registerLazySingleton<FetchUsersUseCase>(() => FetchUsersUseCase());
  locator.registerLazySingleton<FetchMeetingRoomUseCase>(() => FetchMeetingRoomUseCase());
  locator.registerLazySingleton<FetchChatMessageUseCase>(() => FetchChatMessageUseCase());
  locator.registerLazySingleton<AddChatMessageUseCase>(() => AddChatMessageUseCase());
  locator.registerLazySingleton<GetAllChatMessageUseCase>(() => GetAllChatMessageUseCase());
}
