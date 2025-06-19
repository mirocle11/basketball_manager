import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

import '../value_objects/league_rules.dart';

part 'league.g.dart';

@HiveType(typeId: 0)
@JsonSerializable(explicitToJson: true)
class League extends Equatable {
  const League({
    required this.id,
    required this.name,
    required this.rules,
    required this.createdAt,
    required this.updatedAt,
  });

  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final LeagueRules rules;
  @HiveField(3)
  final DateTime createdAt;
  @HiveField(4)
  final DateTime updatedAt;

  factory League.fromJson(Map<String, dynamic> json) => _$LeagueFromJson(json);
  Map<String, dynamic> toJson() => _$LeagueToJson(this);

  @override
  List<Object?> get props => [id, name, rules, createdAt, updatedAt];
}
