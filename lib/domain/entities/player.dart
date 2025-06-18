import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

import '../enums/position.dart';
import '../value_objects/skills.dart';
import '../value_objects/contract.dart';
import '../value_objects/injury_status.dart';

part 'player.g.dart';

@HiveType(typeId: 3)
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

  @HiveField(0)
  final String id;
  @HiveField(1)
  final String? teamId;
  @HiveField(2)
  final String name;
  @HiveField(3)
  final int age;
  @HiveField(4)
  final Position position;
  @HiveField(5)
  final int overall;
  @HiveField(6)
  final Skills skills;
  @HiveField(7)
  final Contract contract;
  @HiveField(8)
  final int morale;
  @HiveField(9)
  final InjuryStatus health;
  @HiveField(10)
  final DateTime createdAt;
  @HiveField(11)
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
