import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

part 'skills.g.dart';

@HiveType(typeId: 16)
@JsonSerializable()
class Skills extends Equatable {
  const Skills({
    this.shooting = 0,
    this.passing = 0,
    this.defense = 0,
    this.rebounding = 0,
    this.speed = 0,
  });

  @HiveField(0)
  final int shooting;
  @HiveField(1)
  final int passing;
  @HiveField(2)
  final int defense;
  @HiveField(3)
  final int rebounding;
  @HiveField(4)
  final int speed;

  factory Skills.fromJson(Map<String, dynamic> json) => _$SkillsFromJson(json);
  Map<String, dynamic> toJson() => _$SkillsToJson(this);

  @override
  List<Object?> get props => [shooting, passing, defense, rebounding, speed];
}
