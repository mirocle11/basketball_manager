import 'basic_finance_transaction.dart';

class BasicFinanceSheet {
  BasicFinanceSheet({
    required this.id,
    required this.transactions,
  });

  final String id;
  final List<BasicFinanceTransaction> transactions;

  double get balance {
    double total = 0;
    for (final txn in transactions) {
      total += txn.type == TransactionType.credit
          ? txn.amount
          : -txn.amount;
    }
    return total;
  }

  void addTransaction(BasicFinanceTransaction txn) {
    transactions.add(txn);
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'transactions': transactions.map((t) => t.toJson()).toList(),
  };

  factory BasicFinanceSheet.fromJson(Map<String, dynamic> json) {
    return BasicFinanceSheet(
      id: json['id'],
      transactions: (json['transactions'] as List)
          .map((e) => BasicFinanceTransaction.fromJson(e))
          .toList(),
    );
  }
}
