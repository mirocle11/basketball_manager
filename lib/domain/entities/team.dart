import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../value_objects/team_colors.dart';
import '../value_objects/record.dart';

part 'team.g.dart';

@JsonSerializable(explicitToJson: true)
class Team extends Equatable {
  const Team({
    required this.id,
    required this.leagueId,
    required this.name,
    required this.city,
    required this.colors,
    required this.budget,
    required this.payroll,
    required this.prestige,
    required this.record,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final String leagueId;
  final String name;
  final String city;
  final TeamColors colors;
  final double budget;
  final double payroll;
  final int prestige;
  final Record record;
  final DateTime createdAt;
  final DateTime updatedAt;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
  Map<String, dynamic> toJson() => _$TeamToJson(this);

  @override
  List<Object?> get props => [
        id,
        leagueId,
        name,
        city,
        colors,
        budget,
        payroll,
        prestige,
        record,
        createdAt,
        updatedAt,
      ];
}
