import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

import '../value_objects/team_standing.dart';

part 'season.g.dart';

@HiveType(typeId: 1)
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

  @HiveField(0)
  final int year;
  @HiveField(1)
  final String leagueId;
  @HiveField(2)
  final List<String> schedule;
  @HiveField(3)
  final List<TeamStanding> standings;
  @HiveField(4)
  final DateTime createdAt;
  @HiveField(5)
  final DateTime updatedAt;

  factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);
  Map<String, dynamic> toJson() => _$SeasonToJson(this);

  @override
  List<Object?> get props => [year, leagueId, schedule, standings, createdAt, updatedAt];
}
