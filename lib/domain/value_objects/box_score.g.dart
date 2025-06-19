// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'box_score.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BoxScoreAdapter extends TypeAdapter<BoxScore> {
  @override
  final int typeId = 9;

  @override
  BoxScore read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BoxScore(
      stats: (fields[0] as Map).cast<String, dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, BoxScore obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.stats);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BoxScoreAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoxScore _$BoxScoreFromJson(Map<String, dynamic> json) => BoxScore(
      stats: json['stats'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$BoxScoreToJson(BoxScore instance) => <String, dynamic>{
      'stats': instance.stats,
    };
