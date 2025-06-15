// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_standing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamStanding _$TeamStandingFromJson(Map<String, dynamic> json) => TeamStanding(
      teamId: json['teamId'] as String,
      wins: (json['wins'] as num?)?.toInt() ?? 0,
      losses: (json['losses'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$TeamStandingToJson(TeamStanding instance) =>
    <String, dynamic>{
      'teamId': instance.teamId,
      'wins': instance.wins,
      'losses': instance.losses,
    };
