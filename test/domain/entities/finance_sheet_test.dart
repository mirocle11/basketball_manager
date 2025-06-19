import 'package:flutter_test/flutter_test.dart';
import 'package:basketball_manager/domain/entities/finance_sheet.dart';
import 'package:basketball_manager/domain/value_objects/income_breakdown.dart';
import 'package:basketball_manager/domain/value_objects/expense_breakdown.dart';

void main() {
  test('FinanceSheet toJson/fromJson', () {
    final sheet = FinanceSheet(
      teamId: 't1',
      seasonYear: 2024,
      income: const IncomeBreakdown(ticketSales: 1),
      expenses: const ExpenseBreakdown(salaries: 1),
      balance: 0.0,
      createdAt: DateTime.utc(2024, 1, 1),
      updatedAt: DateTime.utc(2024, 1, 2),
    );

    final json = sheet.toJson();
    final other = FinanceSheet.fromJson(json);

    expect(other, sheet);
  });
}
