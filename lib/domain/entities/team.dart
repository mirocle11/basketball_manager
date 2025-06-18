import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

import '../value_objects/team_colors.dart';
import '../value_objects/record.dart';

part 'team.g.dart';

@HiveType(typeId: 2)
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

  @HiveField(0)
  final String id;
  @HiveField(1)
  final String leagueId;
  @HiveField(2)
  final String name;
  @HiveField(3)
  final String city;
  @HiveField(4)
  final TeamColors colors;
  @HiveField(5)
  final double budget;
  @HiveField(6)
  final double payroll;
  @HiveField(7)
  final int prestige;
  @HiveField(8)
  final Record record;
  @HiveField(9)
  final DateTime createdAt;
  @HiveField(10)
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
