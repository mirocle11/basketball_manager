// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'income_breakdown.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IncomeBreakdownAdapter extends TypeAdapter<IncomeBreakdown> {
  @override
  final int typeId = 12;

  @override
  IncomeBreakdown read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return IncomeBreakdown(
      ticketSales: fields[0] as double,
      merchandise: fields[1] as double,
      other: fields[2] as double,
    );
  }

  @override
  void write(BinaryWriter writer, IncomeBreakdown obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.ticketSales)
      ..writeByte(1)
      ..write(obj.merchandise)
      ..writeByte(2)
      ..write(obj.other);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IncomeBreakdownAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IncomeBreakdown _$IncomeBreakdownFromJson(Map<String, dynamic> json) =>
    IncomeBreakdown(
      ticketSales: (json['ticketSales'] as num?)?.toDouble() ?? 0,
      merchandise: (json['merchandise'] as num?)?.toDouble() ?? 0,
      other: (json['other'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$IncomeBreakdownToJson(IncomeBreakdown instance) =>
    <String, dynamic>{
      'ticketSales': instance.ticketSales,
      'merchandise': instance.merchandise,
      'other': instance.other,
    };
