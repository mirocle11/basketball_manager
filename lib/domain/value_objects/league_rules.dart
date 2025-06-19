import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

part 'league_rules.g.dart';

@HiveType(typeId: 14)
@JsonSerializable()
class LeagueRules extends Equatable {
  const LeagueRules({required this.salaryCap, required this.rosterSize});

  @HiveField(0)
  final double salaryCap;
  @HiveField(1)
  final int rosterSize;

  factory LeagueRules.fromJson(Map<String, dynamic> json) =>
      _$LeagueRulesFromJson(json);
  Map<String, dynamic> toJson() => _$LeagueRulesToJson(this);

  @override
  List<Object?> get props => [salaryCap, rosterSize];
}
