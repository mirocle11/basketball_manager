// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_seed_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueSeedDto _$LeagueSeedDtoFromJson(Map<String, dynamic> json) =>
    LeagueSeedDto(
      conferences: (json['conferences'] as List<dynamic>)
          .map((e) => ConferenceDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      divisions: (json['divisions'] as List<dynamic>)
          .map((e) => DivisionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      teams: (json['teams'] as List<dynamic>)
          .map((e) => TeamDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      rules: json['rules'] as Map<String, dynamic>,
      schedule: json['schedule'] as List<dynamic>,
    );

Map<String, dynamic> _$LeagueSeedDtoToJson(LeagueSeedDto instance) =>
    <String, dynamic>{
      'conferences': instance.conferences.map((e) => e.toJson()).toList(),
      'divisions': instance.divisions.map((e) => e.toJson()).toList(),
      'teams': instance.teams.map((e) => e.toJson()).toList(),
      'rules': instance.rules,
      'schedule': instance.schedule,
    };
