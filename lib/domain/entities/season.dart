import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../value_objects/team_standing.dart';

part 'season.g.dart';

@JsonSerializable(explicitToJson: true)
class Season extends Equatable {
  const Season({
    required this.year,
    required this.leagueId,
    required this.schedule,
    required this.standings,
    required this.createdAt,
    required this.updatedAt,
  });

  final int year;
  final String leagueId;
  final List<String> schedule;
  final List<TeamStanding> standings;
  final DateTime createdAt;
  final DateTime updatedAt;

  factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);
  Map<String, dynamic> toJson() => _$SeasonToJson(this);

  @override
  List<Object?> get props => [year, leagueId, schedule, standings, createdAt, updatedAt];
}
