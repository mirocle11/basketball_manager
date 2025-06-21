// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamDto _$TeamDtoFromJson(Map<String, dynamic> json) => TeamDto(
      id: json['id'] as String,
      city: json['city'] as String,
      nickname: json['nickname'] as String,
      conferenceId: json['conferenceId'] as String,
      divisionId: json['divisionId'] as String,
      colors: TeamColors.fromJson(json['colors'] as Map<String, dynamic>),
      selectable: json['selectable'] as bool,
    );

Map<String, dynamic> _$TeamDtoToJson(TeamDto instance) => <String, dynamic>{
      'id': instance.id,
      'city': instance.city,
      'nickname': instance.nickname,
      'conferenceId': instance.conferenceId,
      'divisionId': instance.divisionId,
      'colors': instance.colors.toJson(),
      'selectable': instance.selectable,
    };
