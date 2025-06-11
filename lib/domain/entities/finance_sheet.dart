import 'finance_transaction.dart';

class FinanceSheet {
  FinanceSheet({
    required this.id,
    required this.transactions,
  });

  final String id;
  final List<FinanceTransaction> transactions;

  double get balance {
    double total = 0;
    for (final txn in transactions) {
      total += txn.type == TransactionType.credit
          ? txn.amount
          : -txn.amount;
    }
    return total;
  }

  void addTransaction(FinanceTransaction txn) {
    transactions.add(txn);
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'transactions': transactions.map((t) => t.toJson()).toList(),
  };

  factory FinanceSheet.fromJson(Map<String, dynamic> json) {
    return FinanceSheet(
      id: json['id'],
      transactions: (json['transactions'] as List)
          .map((e) => FinanceTransaction.fromJson(e))
          .toList(),
    );
  }
}
