import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

part 'team_standing.g.dart';

@HiveType(typeId: 18)
@JsonSerializable()
class TeamStanding extends Equatable {
  const TeamStanding({
    required this.teamId,
    this.wins = 0,
    this.losses = 0,
  });

  @HiveField(0)
  final String teamId;
  @HiveField(1)
  final int wins;
  @HiveField(2)
  final int losses;

  double get winPercentage => wins + losses == 0 ? 0 : wins / (wins + losses);

  factory TeamStanding.fromJson(Map<String, dynamic> json) =>
      _$TeamStandingFromJson(json);
  Map<String, dynamic> toJson() => _$TeamStandingToJson(this);

  @override
  List<Object?> get props => [teamId, wins, losses];
}
