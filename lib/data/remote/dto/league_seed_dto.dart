import 'package:json_annotation/json_annotation.dart';

import 'conference_dto.dart';
import 'division_dto.dart';
import 'team_dto.dart';

part 'league_seed_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class LeagueSeedDto {
  const LeagueSeedDto({
    required this.conferences,
    required this.divisions,
    required this.teams,
    required this.rules,
    required this.schedule,
  });

  final List<ConferenceDto> conferences;
  final List<DivisionDto> divisions;
  final List<TeamDto> teams;
  final Map<String, dynamic> rules;
  final List<dynamic> schedule;

  factory LeagueSeedDto.fromJson(Map<String, dynamic> json) =>
      _$LeagueSeedDtoFromJson(json);
  Map<String, dynamic> toJson() => _$LeagueSeedDtoToJson(this);
}
