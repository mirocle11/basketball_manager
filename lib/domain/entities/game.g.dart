// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Game _$GameFromJson(Map<String, dynamic> json) => Game(
      id: json['id'] as String,
      seasonYear: (json['seasonYear'] as num).toInt(),
      date: DateTime.parse(json['date'] as String),
      homeTeamId: json['homeTeamId'] as String,
      awayTeamId: json['awayTeamId'] as String,
      homeScore: (json['homeScore'] as num).toInt(),
      awayScore: (json['awayScore'] as num).toInt(),
      boxScore: BoxScore.fromJson(json['boxScore'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$GameToJson(Game instance) => <String, dynamic>{
      'id': instance.id,
      'seasonYear': instance.seasonYear,
      'date': instance.date.toIso8601String(),
      'homeTeamId': instance.homeTeamId,
      'awayTeamId': instance.awayTeamId,
      'homeScore': instance.homeScore,
      'awayScore': instance.awayScore,
      'boxScore': instance.boxScore.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
