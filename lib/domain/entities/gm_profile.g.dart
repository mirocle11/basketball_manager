// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gm_profile.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GMProfileAdapter extends TypeAdapter<GMProfile> {
  @override
  final int typeId = 30;

  @override
  GMProfile read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GMProfile(
      id: fields[0] as String,
      name: fields[1] as String,
      avatarPath: fields[2] as String,
      tutorialOn: fields[3] as bool,
      createdAt: fields[4] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, GMProfile obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.avatarPath)
      ..writeByte(3)
      ..write(obj.tutorialOn)
      ..writeByte(4)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GMProfileAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GMProfile _$GMProfileFromJson(Map<String, dynamic> json) => GMProfile(
      id: json['id'] as String,
      name: json['name'] as String,
      avatarPath: json['avatarPath'] as String,
      tutorialOn: json['tutorialOn'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$GMProfileToJson(GMProfile instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatarPath': instance.avatarPath,
      'tutorialOn': instance.tutorialOn,
      'createdAt': instance.createdAt.toIso8601String(),
    };
