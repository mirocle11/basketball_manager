// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_rules.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LeagueRulesAdapter extends TypeAdapter<LeagueRules> {
  @override
  final int typeId = 14;

  @override
  LeagueRules read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LeagueRules(
      salaryCap: fields[0] as double,
      rosterSize: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, LeagueRules obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.salaryCap)
      ..writeByte(1)
      ..write(obj.rosterSize);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LeagueRulesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueRules _$LeagueRulesFromJson(Map<String, dynamic> json) => LeagueRules(
      salaryCap: (json['salaryCap'] as num).toDouble(),
      rosterSize: (json['rosterSize'] as num).toInt(),
    );

Map<String, dynamic> _$LeagueRulesToJson(LeagueRules instance) =>
    <String, dynamic>{
      'salaryCap': instance.salaryCap,
      'rosterSize': instance.rosterSize,
    };
