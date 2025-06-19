import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/league.dart';
import '../../../domain/value_objects/league_rules.dart';

part 'league_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class LeagueDto {
  const LeagueDto({required this.id, required this.name, required this.rules});

  final String id;
  final String name;
  final LeagueRules rules;

  factory LeagueDto.fromJson(Map<String, dynamic> json) =>
      _$LeagueDtoFromJson(json);
  Map<String, dynamic> toJson() => _$LeagueDtoToJson(this);

  League toDomain() => League(
        id: id,
        name: name,
        rules: rules,
        createdAt: DateTime.utc(1970, 1, 1),
        updatedAt: DateTime.utc(1970, 1, 1),
      );
}
