// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TransactionTypeAdapter extends TypeAdapter<TransactionType> {
  @override
  final int typeId = 22;

  @override
  TransactionType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TransactionType.trade;
      case 1:
        return TransactionType.signing;
      case 2:
        return TransactionType.release;
      case 3:
        return TransactionType.salary;
      default:
        return TransactionType.trade;
    }
  }

  @override
  void write(BinaryWriter writer, TransactionType obj) {
    switch (obj) {
      case TransactionType.trade:
        writer.writeByte(0);
        break;
      case TransactionType.signing:
        writer.writeByte(1);
        break;
      case TransactionType.release:
        writer.writeByte(2);
        break;
      case TransactionType.salary:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransactionTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
