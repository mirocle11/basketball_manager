// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_breakdown.dart';

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
