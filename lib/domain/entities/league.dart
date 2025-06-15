import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../value_objects/league_rules.dart';

part 'league.g.dart';

@JsonSerializable(explicitToJson: true)
class League extends Equatable {
  const League({
    required this.id,
    required this.name,
    required this.rules,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final String name;
  final LeagueRules rules;
  final DateTime createdAt;
  final DateTime updatedAt;

  factory League.fromJson(Map<String, dynamic> json) => _$LeagueFromJson(json);
  Map<String, dynamic> toJson() => _$LeagueToJson(this);

  @override
  List<Object?> get props => [id, name, rules, createdAt, updatedAt];
}
