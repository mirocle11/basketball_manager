import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'team_standing.g.dart';

@JsonSerializable()
class TeamStanding extends Equatable {
  const TeamStanding({
    required this.teamId,
    this.wins = 0,
    this.losses = 0,
  });

  final String teamId;
  final int wins;
  final int losses;

  double get winPercentage => wins + losses == 0 ? 0 : wins / (wins + losses);

  factory TeamStanding.fromJson(Map<String, dynamic> json) =>
      _$TeamStandingFromJson(json);
  Map<String, dynamic> toJson() => _$TeamStandingToJson(this);

  @override
  List<Object?> get props => [teamId, wins, losses];
}
