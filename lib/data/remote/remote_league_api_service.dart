import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import '../../domain/entities/game.dart';
import '../../domain/entities/league.dart';

import 'dto/game_dto.dart';
import 'dto/league_dto.dart';

class RemoteLeagueApiService {
  Future<Map<String, dynamic>> _loadData() async {
    final data = await rootBundle.loadString('assets/mock/season1.json');
    return json.decode(data) as Map<String, dynamic>;
  }

  Future<League> fetchLeague() async {
    final jsonMap = await _loadData();
    final leagueJson = jsonMap['league'] as Map<String, dynamic>;
    final dto = LeagueDto.fromJson(leagueJson);
    return dto.toDomain();
  }

  Future<List<Game>> fetchSchedule(int seasonYear) async {
    final jsonMap = await _loadData();
    final schedule = jsonMap['schedule'] as List<dynamic>;
    return schedule
        .map((e) =>
            GameDto.fromJson(e as Map<String, dynamic>).toDomain(seasonYear))
        .toList();
  }

  /// Preloads mock assets to simulate network seeding.
  Future<void> seed() async {
    await _loadData();
    await Future<void>.delayed(const Duration(milliseconds: 300));
  }

  /// Seeds data only if not already initialized.
  Future<void> seedIfEmpty() async {
    await seed();
  }
}
