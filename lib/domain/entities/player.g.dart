// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlayerAdapter extends TypeAdapter<Player> {
  @override
  final int typeId = 3;

  @override
  Player read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Player(
      id: fields[0] as String,
      teamId: fields[1] as String?,
      name: fields[2] as String,
      age: fields[3] as int,
      position: fields[4] as Position,
      overall: fields[5] as int,
      skills: fields[6] as Skills,
      contract: fields[7] as Contract,
      morale: fields[8] as int,
      health: fields[9] as InjuryStatus,
      createdAt: fields[10] as DateTime,
      updatedAt: fields[11] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, Player obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.teamId)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.age)
      ..writeByte(4)
      ..write(obj.position)
      ..writeByte(5)
      ..write(obj.overall)
      ..writeByte(6)
      ..write(obj.skills)
      ..writeByte(7)
      ..write(obj.contract)
      ..writeByte(8)
      ..write(obj.morale)
      ..writeByte(9)
      ..write(obj.health)
      ..writeByte(10)
      ..write(obj.createdAt)
      ..writeByte(11)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlayerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Player _$PlayerFromJson(Map<String, dynamic> json) => Player(
      id: json['id'] as String,
      teamId: json['teamId'] as String?,
      name: json['name'] as String,
      age: (json['age'] as num).toInt(),
      position: $enumDecode(_$PositionEnumMap, json['position']),
      overall: (json['overall'] as num).toInt(),
      skills: Skills.fromJson(json['skills'] as Map<String, dynamic>),
      contract: Contract.fromJson(json['contract'] as Map<String, dynamic>),
      morale: (json['morale'] as num).toInt(),
      health: InjuryStatus.fromJson(json['health'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
      'id': instance.id,
      'teamId': instance.teamId,
      'name': instance.name,
      'age': instance.age,
      'position': _$PositionEnumMap[instance.position]!,
      'overall': instance.overall,
      'skills': instance.skills.toJson(),
      'contract': instance.contract.toJson(),
      'morale': instance.morale,
      'health': instance.health.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$PositionEnumMap = {
  Position.pg: 'pg',
  Position.sg: 'sg',
  Position.sf: 'sf',
  Position.pf: 'pf',
  Position.c: 'c',
};
