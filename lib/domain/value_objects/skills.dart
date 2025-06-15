import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'skills.g.dart';

@JsonSerializable()
class Skills extends Equatable {
  const Skills({
    this.shooting = 0,
    this.passing = 0,
    this.defense = 0,
    this.rebounding = 0,
    this.speed = 0,
  });

  final int shooting;
  final int passing;
  final int defense;
  final int rebounding;
  final int speed;

  factory Skills.fromJson(Map<String, dynamic> json) => _$SkillsFromJson(json);
  Map<String, dynamic> toJson() => _$SkillsToJson(this);

  @override
  List<Object?> get props => [shooting, passing, defense, rebounding, speed];
}
