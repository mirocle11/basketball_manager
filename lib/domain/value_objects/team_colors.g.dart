// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_colors.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TeamColorsAdapter extends TypeAdapter<TeamColors> {
  @override
  final int typeId = 17;

  @override
  TeamColors read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TeamColors(
      primary: fields[0] as String,
      secondary: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TeamColors obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.primary)
      ..writeByte(1)
      ..write(obj.secondary);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TeamColorsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamColors _$TeamColorsFromJson(Map<String, dynamic> json) => TeamColors(
      primary: json['primary'] as String,
      secondary: json['secondary'] as String,
    );

Map<String, dynamic> _$TeamColorsToJson(TeamColors instance) =>
    <String, dynamic>{
      'primary': instance.primary,
      'secondary': instance.secondary,
    };
