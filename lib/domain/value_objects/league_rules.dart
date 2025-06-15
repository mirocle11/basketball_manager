import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'league_rules.g.dart';

@JsonSerializable()
class LeagueRules extends Equatable {
  const LeagueRules({required this.salaryCap, required this.rosterSize});

  final double salaryCap;
  final int rosterSize;

  factory LeagueRules.fromJson(Map<String, dynamic> json) =>
      _$LeagueRulesFromJson(json);
  Map<String, dynamic> toJson() => _$LeagueRulesToJson(this);

  @override
  List<Object?> get props => [salaryCap, rosterSize];
}
