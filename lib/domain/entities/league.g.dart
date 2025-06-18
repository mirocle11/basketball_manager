// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

League _$LeagueFromJson(Map<String, dynamic> json) => League(
      id: json['id'] as String,
      name: json['name'] as String,
      rules: LeagueRules.fromJson(json['rules'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$LeagueToJson(League instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rules': instance.rules.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
