// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PositionAdapter extends TypeAdapter<Position> {
  @override
  final int typeId = 21;

  @override
  Position read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Position.pg;
      case 1:
        return Position.sg;
      case 2:
        return Position.sf;
      case 3:
        return Position.pf;
      case 4:
        return Position.c;
      default:
        return Position.pg;
    }
  }

  @override
  void write(BinaryWriter writer, Position obj) {
    switch (obj) {
      case Position.pg:
        writer.writeByte(0);
        break;
      case Position.sg:
        writer.writeByte(1);
        break;
      case Position.sf:
        writer.writeByte(2);
        break;
      case Position.pf:
        writer.writeByte(3);
        break;
      case Position.c:
        writer.writeByte(4);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PositionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
