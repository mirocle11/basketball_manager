import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

import '../value_objects/income_breakdown.dart';
import '../value_objects/expense_breakdown.dart';

part 'finance_sheet.g.dart';

@HiveType(typeId: 6)
@JsonSerializable(explicitToJson: true)
class FinanceSheet extends Equatable {
  const FinanceSheet({
    required this.teamId,
    required this.seasonYear,
    required this.income,
    required this.expenses,
    required this.balance,
    required this.createdAt,
    required this.updatedAt,
  });

  @HiveField(0)
  final String teamId;
  @HiveField(1)
  final int seasonYear;
  @HiveField(2)
  final IncomeBreakdown income;
  @HiveField(3)
  final ExpenseBreakdown expenses;
  @HiveField(4)
  final double balance;
  @HiveField(5)
  final DateTime createdAt;
  @HiveField(6)
  final DateTime updatedAt;

  factory FinanceSheet.fromJson(Map<String, dynamic> json) =>
      _$FinanceSheetFromJson(json);
  Map<String, dynamic> toJson() => _$FinanceSheetToJson(this);

  @override
  List<Object?> get props => [
        teamId,
        seasonYear,
        income,
        expenses,
        balance,
        createdAt,
        updatedAt,
      ];
}
