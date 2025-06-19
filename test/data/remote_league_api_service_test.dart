import 'package:flutter_test/flutter_test.dart';

import 'package:basketball_manager/data/remote/remote_league_api_service.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final service = RemoteLeagueApiService();

  test('fetchLeague returns name "VBA"', () async {
    final league = await service.fetchLeague();
    expect(league.name, 'VBA');
  });

  test('fetchSchedule length is 3', () async {
    final games = await service.fetchSchedule(2025);
    expect(games.length, 3);
  });
}
