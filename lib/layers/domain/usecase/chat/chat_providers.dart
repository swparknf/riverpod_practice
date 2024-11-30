
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain.dart';

final fetchChatMessageUseCaseProvider = Provider<FetchChatMessageUseCase>((ref) {
  return FetchChatMessageUseCase();
});

final addChatMessageUseCaseProvider = Provider<AddChatMessageUseCase>((ref) {
  return AddChatMessageUseCase();
});

final getAllChatMessageUseCaseProvider = Provider<GetAllChatMessageUseCase>((ref) {
  return GetAllChatMessageUseCase();
});