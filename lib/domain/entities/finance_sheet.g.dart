// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finance_sheet.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FinanceSheetAdapter extends TypeAdapter<FinanceSheet> {
  @override
  final int typeId = 6;

  @override
  FinanceSheet read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FinanceSheet(
      teamId: fields[0] as String,
      seasonYear: fields[1] as int,
      income: fields[2] as IncomeBreakdown,
      expenses: fields[3] as ExpenseBreakdown,
      balance: fields[4] as double,
      createdAt: fields[5] as DateTime,
      updatedAt: fields[6] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, FinanceSheet obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.teamId)
      ..writeByte(1)
      ..write(obj.seasonYear)
      ..writeByte(2)
      ..write(obj.income)
      ..writeByte(3)
      ..write(obj.expenses)
      ..writeByte(4)
      ..write(obj.balance)
      ..writeByte(5)
      ..write(obj.createdAt)
      ..writeByte(6)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FinanceSheetAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FinanceSheet _$FinanceSheetFromJson(Map<String, dynamic> json) => FinanceSheet(
      teamId: json['teamId'] as String,
      seasonYear: (json['seasonYear'] as num).toInt(),
      income: IncomeBreakdown.fromJson(json['income'] as Map<String, dynamic>),
      expenses:
          ExpenseBreakdown.fromJson(json['expenses'] as Map<String, dynamic>),
      balance: (json['balance'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$FinanceSheetToJson(FinanceSheet instance) =>
    <String, dynamic>{
      'teamId': instance.teamId,
      'seasonYear': instance.seasonYear,
      'income': instance.income.toJson(),
      'expenses': instance.expenses.toJson(),
      'balance': instance.balance,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
