import 'package:riverpod_practice/common/common.dart';

import '../../domain/domain.dart';
import '../data.dart';

class MeetingRepositoryImp implements MeetingRepository {
  final RemoteDataSources _remoteDataSource;

  MeetingRepositoryImp([RemoteDataSources? dataSource])
      : _remoteDataSource = dataSource ?? locator();

  @override
  Future<List<MeetingRoom>> fetchMeetingRoom() async {
      try {
        final response = await _remoteDataSource.fetchMeetingRoom();
        return MeetingMapper.toDomainList(response);
      } catch (e) {
        throw Exception('Failed to load meeting room : $e');
      }
  }
}

