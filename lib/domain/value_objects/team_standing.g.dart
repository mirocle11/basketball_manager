// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_standing.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TeamStandingAdapter extends TypeAdapter<TeamStanding> {
  @override
  final int typeId = 18;

  @override
  TeamStanding read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TeamStanding(
      teamId: fields[0] as String,
      wins: fields[1] as int,
      losses: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, TeamStanding obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.teamId)
      ..writeByte(1)
      ..write(obj.wins)
      ..writeByte(2)
      ..write(obj.losses);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TeamStandingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
