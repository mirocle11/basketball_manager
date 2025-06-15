// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      id: json['id'] as String,
      date: DateTime.parse(json['date'] as String),
      type: $enumDecode(_$EventTypeEnumMap, json['type']),
      effects: json['effects'] as Map<String, dynamic>,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'type': _$EventTypeEnumMap[instance.type]!,
      'effects': instance.effects,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$EventTypeEnumMap = {
  EventType.draft: 'draft',
  EventType.allStar: 'allStar',
  EventType.deadline: 'deadline',
};
