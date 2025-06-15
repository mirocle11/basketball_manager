import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../value_objects/income_breakdown.dart';
import '../value_objects/expense_breakdown.dart';

part 'finance_sheet.g.dart';

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

  final String teamId;
  final int seasonYear;
  final IncomeBreakdown income;
  final ExpenseBreakdown expenses;
  final double balance;
  final DateTime createdAt;
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
