// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Player _$PlayerFromJson(Map<String, dynamic> json) => Player(
      id: json['id'] as String,
      teamId: json['teamId'] as String?,
      name: json['name'] as String,
      age: (json['age'] as num).toInt(),
      position: $enumDecode(_$PositionEnumMap, json['position']),
      overall: (json['overall'] as num).toInt(),
      skills: Skills.fromJson(json['skills'] as Map<String, dynamic>),
      contract: Contract.fromJson(json['contract'] as Map<String, dynamic>),
      morale: (json['morale'] as num).toInt(),
      health: InjuryStatus.fromJson(json['health'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
      'id': instance.id,
      'teamId': instance.teamId,
      'name': instance.name,
      'age': instance.age,
      'position': _$PositionEnumMap[instance.position]!,
      'overall': instance.overall,
      'skills': instance.skills.toJson(),
      'contract': instance.contract.toJson(),
      'morale': instance.morale,
      'health': instance.health.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$PositionEnumMap = {
  Position.pg: 'pg',
  Position.sg: 'sg',
  Position.sf: 'sf',
  Position.pf: 'pf',
  Position.c: 'c',
};
