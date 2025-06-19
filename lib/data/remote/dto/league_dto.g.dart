// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueDto _$LeagueDtoFromJson(Map<String, dynamic> json) => LeagueDto(
      id: json['id'] as String,
      name: json['name'] as String,
      rules: LeagueRules.fromJson(json['rules'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LeagueDtoToJson(LeagueDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rules': instance.rules.toJson(),
    };
