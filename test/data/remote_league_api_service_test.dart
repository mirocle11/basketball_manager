import 'package:flutter_test/flutter_test.dart';

import 'package:basketball_manager/data/remote/remote_league_api_service.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final service = RemoteLeagueApiService();

  test('loadSeed returns 30 teams', () async {
    final teams = await service.fetchTeams();
    expect(teams.length, 30);
  });

  test('selectable team count is 10', () async {
    final teams = await service.fetchTeams();
    final selectable = teams.where((t) => t.selectable).length;
    expect(selectable, 10);
  });
}
