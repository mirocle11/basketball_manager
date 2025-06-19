// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameDto _$GameDtoFromJson(Map<String, dynamic> json) => GameDto(
      id: json['id'] as String,
      date: json['date'] as String,
      home: json['home'] as String,
      away: json['away'] as String,
    );

Map<String, dynamic> _$GameDtoToJson(GameDto instance) => <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'home': instance.home,
      'away': instance.away,
    };
