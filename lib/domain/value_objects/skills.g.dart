// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skills.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SkillsAdapter extends TypeAdapter<Skills> {
  @override
  final int typeId = 16;

  @override
  Skills read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Skills(
      shooting: fields[0] as int,
      passing: fields[1] as int,
      defense: fields[2] as int,
      rebounding: fields[3] as int,
      speed: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Skills obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.shooting)
      ..writeByte(1)
      ..write(obj.passing)
      ..writeByte(2)
      ..write(obj.defense)
      ..writeByte(3)
      ..write(obj.rebounding)
      ..writeByte(4)
      ..write(obj.speed);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SkillsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Skills _$SkillsFromJson(Map<String, dynamic> json) => Skills(
      shooting: (json['shooting'] as num?)?.toInt() ?? 0,
      passing: (json['passing'] as num?)?.toInt() ?? 0,
      defense: (json['defense'] as num?)?.toInt() ?? 0,
      rebounding: (json['rebounding'] as num?)?.toInt() ?? 0,
      speed: (json['speed'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$SkillsToJson(Skills instance) => <String, dynamic>{
      'shooting': instance.shooting,
      'passing': instance.passing,
      'defense': instance.defense,
      'rebounding': instance.rebounding,
      'speed': instance.speed,
    };
