// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injury_status.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InjuryStatusAdapter extends TypeAdapter<InjuryStatus> {
  @override
  final int typeId = 13;

  @override
  InjuryStatus read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return InjuryStatus(
      isInjured: fields[0] as bool,
      description: fields[1] as String?,
      until: fields[2] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, InjuryStatus obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.isInjured)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.until);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InjuryStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InjuryStatus _$InjuryStatusFromJson(Map<String, dynamic> json) => InjuryStatus(
      isInjured: json['isInjured'] as bool,
      description: json['description'] as String?,
      until: json['until'] == null
          ? null
          : DateTime.parse(json['until'] as String),
    );

Map<String, dynamic> _$InjuryStatusToJson(InjuryStatus instance) =>
    <String, dynamic>{
      'isInjured': instance.isInjured,
      'description': instance.description,
      'until': instance.until?.toIso8601String(),
    };
