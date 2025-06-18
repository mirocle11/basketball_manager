// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Team _$TeamFromJson(Map<String, dynamic> json) => Team(
      id: json['id'] as String,
      leagueId: json['leagueId'] as String,
      name: json['name'] as String,
      city: json['city'] as String,
      colors: TeamColors.fromJson(json['colors'] as Map<String, dynamic>),
      budget: (json['budget'] as num).toDouble(),
      payroll: (json['payroll'] as num).toDouble(),
      prestige: (json['prestige'] as num).toInt(),
      record: Record.fromJson(json['record'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      'id': instance.id,
      'leagueId': instance.leagueId,
      'name': instance.name,
      'city': instance.city,
      'colors': instance.colors.toJson(),
      'budget': instance.budget,
      'payroll': instance.payroll,
      'prestige': instance.prestige,
      'record': instance.record.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
