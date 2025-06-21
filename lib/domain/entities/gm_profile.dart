import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

part 'gm_profile.g.dart';

@HiveType(typeId: 30)
@JsonSerializable()
class GMProfile extends Equatable {
  const GMProfile({
    required this.id,
    required this.name,
    required this.avatarPath,
    required this.tutorialOn,
    required this.createdAt,
  });

  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String avatarPath;
  @HiveField(3)
  final bool tutorialOn;
  @HiveField(4)
  final DateTime createdAt;

  factory GMProfile.fromJson(Map<String, dynamic> json) =>
      _$GMProfileFromJson(json);
  Map<String, dynamic> toJson() => _$GMProfileToJson(this);

  @override
  List<Object?> get props => [id, name, avatarPath, tutorialOn, createdAt];
}
