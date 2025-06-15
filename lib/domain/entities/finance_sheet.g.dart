// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finance_sheet.dart';

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
