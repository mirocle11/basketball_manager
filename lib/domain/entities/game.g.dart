// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GameAdapter extends TypeAdapter<Game> {
  @override
  final int typeId = 4;

  @override
  Game read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Game(
      id: fields[0] as String,
      seasonYear: fields[1] as int,
      date: fields[2] as DateTime,
      homeTeamId: fields[3] as String,
      awayTeamId: fields[4] as String,
      homeScore: fields[5] as int,
      awayScore: fields[6] as int,
      boxScore: fields[7] as BoxScore,
      createdAt: fields[8] as DateTime,
      updatedAt: fields[9] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, Game obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.seasonYear)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.homeTeamId)
      ..writeByte(4)
      ..write(obj.awayTeamId)
      ..writeByte(5)
      ..write(obj.homeScore)
      ..writeByte(6)
      ..write(obj.awayScore)
      ..writeByte(7)
      ..write(obj.boxScore)
      ..writeByte(8)
      ..write(obj.createdAt)
      ..writeByte(9)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GameAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
