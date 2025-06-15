import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'team_colors.g.dart';

@JsonSerializable()
class TeamColors extends Equatable {
  const TeamColors({required this.primary, required this.secondary});

  final String primary;
  final String secondary;

  factory TeamColors.fromJson(Map<String, dynamic> json) =>
      _$TeamColorsFromJson(json);
  Map<String, dynamic> toJson() => _$TeamColorsToJson(this);

  @override
  List<Object?> get props => [primary, secondary];
}
