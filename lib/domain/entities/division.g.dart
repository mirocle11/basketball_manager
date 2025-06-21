// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'division.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DivisionAdapter extends TypeAdapter<Division> {
  @override
  final int typeId = 24;

  @override
  Division read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Division(
      id: fields[0] as String,
      name: fields[1] as String,
      conferenceId: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Division obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.conferenceId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DivisionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Division _$DivisionFromJson(Map<String, dynamic> json) => Division(
      id: json['id'] as String,
      name: json['name'] as String,
      conferenceId: json['conferenceId'] as String,
    );

Map<String, dynamic> _$DivisionToJson(Division instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'conferenceId': instance.conferenceId,
    };
