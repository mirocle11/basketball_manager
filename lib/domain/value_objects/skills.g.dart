// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skills.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Skills _$SkillsFromJson(Map<String, dynamic> json) => Skills(
      shooting: (json['shooting'] as num?)?.toInt() ?? 0,
      passing: (json['passing'] as num?)?.toInt() ?? 0,
      defense: (json['defense'] as num?)?.toInt() ?? 0,
      rebounding: (json['rebounding'] as num?)?.toInt() ?? 0,
      speed: (json['speed'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$SkillsToJson(Skills instance) => <String, dynamic>{
      'shooting': instance.shooting,
      'passing': instance.passing,
      'defense': instance.defense,
      'rebounding': instance.rebounding,
      'speed': instance.speed,
    };
