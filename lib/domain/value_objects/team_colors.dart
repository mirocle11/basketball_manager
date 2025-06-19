import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

part 'team_colors.g.dart';

@HiveType(typeId: 17)
@JsonSerializable()
class TeamColors extends Equatable {
  const TeamColors({required this.primary, required this.secondary});

  @HiveField(0)
  final String primary;
  @HiveField(1)
  final String secondary;

  factory TeamColors.fromJson(Map<String, dynamic> json) =>
      _$TeamColorsFromJson(json);
  Map<String, dynamic> toJson() => _$TeamColorsToJson(this);

  @override
  List<Object?> get props => [primary, secondary];
}
