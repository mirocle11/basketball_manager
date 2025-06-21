import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/team.dart';
import '../../../domain/value_objects/team_colors.dart';
import '../../../domain/value_objects/record.dart';

part 'team_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class TeamDto {
  const TeamDto({
    required this.id,
    required this.city,
    required this.nickname,
    required this.conferenceId,
    required this.divisionId,
    required this.colors,
    required this.selectable,
  });

  final String id;
  final String city;
  final String nickname;
  final String conferenceId;
  final String divisionId;
  final TeamColors colors;
  final bool selectable;

  factory TeamDto.fromJson(Map<String, dynamic> json) =>
      _$TeamDtoFromJson(json);
  Map<String, dynamic> toJson() => _$TeamDtoToJson(this);

  Team toDomain(String leagueId) => Team(
        id: id,
        leagueId: leagueId,
        name: nickname,
        city: city,
        colors: colors,
        budget: 0,
        payroll: 0,
        prestige: 0,
        difficulty: 1,
        pros: const [],
        cons: const [],
        conferenceId: conferenceId,
        divisionId: divisionId,
        record: const Record(),
        createdAt: DateTime.utc(1970, 1, 1),
        updatedAt: DateTime.utc(1970, 1, 1),
      );
}
