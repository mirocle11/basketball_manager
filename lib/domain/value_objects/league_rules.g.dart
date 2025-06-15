// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_rules.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueRules _$LeagueRulesFromJson(Map<String, dynamic> json) => LeagueRules(
      salaryCap: (json['salaryCap'] as num).toDouble(),
      rosterSize: (json['rosterSize'] as num).toInt(),
    );

Map<String, dynamic> _$LeagueRulesToJson(LeagueRules instance) =>
    <String, dynamic>{
      'salaryCap': instance.salaryCap,
      'rosterSize': instance.rosterSize,
    };
