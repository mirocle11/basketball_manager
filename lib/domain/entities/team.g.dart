// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TeamAdapter extends TypeAdapter<Team> {
  @override
  final int typeId = 2;

  @override
  Team read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Team(
      id: fields[0] as String,
      leagueId: fields[1] as String,
      name: fields[2] as String,
      city: fields[3] as String,
      colors: fields[4] as TeamColors,
      budget: fields[5] as double,
      payroll: fields[6] as double,
      prestige: fields[7] as int,
      record: fields[8] as Record,
      createdAt: fields[9] as DateTime,
      updatedAt: fields[10] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, Team obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.leagueId)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.city)
      ..writeByte(4)
      ..write(obj.colors)
      ..writeByte(5)
      ..write(obj.budget)
      ..writeByte(6)
      ..write(obj.payroll)
      ..writeByte(7)
      ..write(obj.prestige)
      ..writeByte(8)
      ..write(obj.record)
      ..writeByte(9)
      ..write(obj.createdAt)
      ..writeByte(10)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TeamAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
