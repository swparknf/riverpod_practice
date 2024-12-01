
import '../../domain/domain.dart';
import '../data.dart';

class MeetingRepositoryImp implements MeetingRepository {
  final RemoteDataSources _remoteDataSource;

  MeetingRepositoryImp(this._remoteDataSource);

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

