import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../enums/position.dart';
import '../value_objects/skills.dart';
import '../value_objects/contract.dart';
import '../value_objects/injury_status.dart';

part 'player.g.dart';

@JsonSerializable(explicitToJson: true)
class Player extends Equatable {
  const Player({
    required this.id,
    this.teamId,
    required this.name,
    required this.age,
    required this.position,
    required this.overall,
    required this.skills,
    required this.contract,
    required this.morale,
    required this.health,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final String? teamId;
  final String name;
  final int age;
  final Position position;
  final int overall;
  final Skills skills;
  final Contract contract;
  final int morale;
  final InjuryStatus health;
  final DateTime createdAt;
  final DateTime updatedAt;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
  Map<String, dynamic> toJson() => _$PlayerToJson(this);

  @override
  List<Object?> get props => [
        id,
        teamId,
        name,
        age,
        position,
        overall,
        skills,
        contract,
        morale,
        health,
        createdAt,
        updatedAt,
      ];
}
