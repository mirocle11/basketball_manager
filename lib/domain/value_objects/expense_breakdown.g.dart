// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_breakdown.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExpenseBreakdownAdapter extends TypeAdapter<ExpenseBreakdown> {
  @override
  final int typeId = 11;

  @override
  ExpenseBreakdown read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExpenseBreakdown(
      salaries: fields[0] as double,
      travel: fields[1] as double,
      other: fields[2] as double,
    );
  }

  @override
  void write(BinaryWriter writer, ExpenseBreakdown obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.salaries)
      ..writeByte(1)
      ..write(obj.travel)
      ..writeByte(2)
      ..write(obj.other);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExpenseBreakdownAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExpenseBreakdown _$ExpenseBreakdownFromJson(Map<String, dynamic> json) =>
    ExpenseBreakdown(
      salaries: (json['salaries'] as num?)?.toDouble() ?? 0,
      travel: (json['travel'] as num?)?.toDouble() ?? 0,
      other: (json['other'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$ExpenseBreakdownToJson(ExpenseBreakdown instance) =>
    <String, dynamic>{
      'salaries': instance.salaries,
      'travel': instance.travel,
      'other': instance.other,
    };
