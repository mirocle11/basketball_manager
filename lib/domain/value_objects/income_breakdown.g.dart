// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'income_breakdown.dart';

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
