import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import '../../domain/entities/conference.dart';
import '../../domain/entities/division.dart';

import 'dto/league_seed_dto.dart';
import 'dto/team_dto.dart';

class RemoteLeagueApiService {
  Future<LeagueSeedDto> _loadSeed() async {
    final data = await rootBundle.loadString('assets/mock/league_seed.json');
    final jsonMap = json.decode(data) as Map<String, dynamic>;
    return LeagueSeedDto.fromJson(jsonMap);
  }

  Future<List<Conference>> fetchConferences() async {
    final seed = await _loadSeed();
    return seed.conferences.map((e) => e.toDomain()).toList();
  }

  Future<List<Division>> fetchDivisions() async {
    final seed = await _loadSeed();
    return seed.divisions.map((e) => e.toDomain()).toList();
  }

  Future<List<TeamDto>> fetchTeams() async {
    final seed = await _loadSeed();
    return seed.teams;
  }

  Future<Map<String, dynamic>> fetchRules() async {
    final seed = await _loadSeed();
    return seed.rules;
  }

  /// Preloads mock assets to simulate network seeding.
  Future<void> seed() async {
    await _loadSeed();
    await Future<void>.delayed(const Duration(milliseconds: 300));
  }

  /// Seeds data only if not already initialized.
  Future<void> seedIfEmpty() async {
    await seed();
  }
}
