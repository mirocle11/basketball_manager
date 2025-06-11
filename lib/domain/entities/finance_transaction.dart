enum TransactionType { credit, debit }

class FinanceTransaction {
  const FinanceTransaction({
    required this.id,
    required this.amount,
    required this.type,
    required this.description,
    required this.timestamp,
  });

  final String id; // UUID or hash
  final double amount;
  final TransactionType type;
  final String description;
  final DateTime timestamp;

  FinanceTransaction copyWith({
    String? id,
    double? amount,
    TransactionType? type,
    String? description,
    DateTime? timestamp,
  }) {
    return FinanceTransaction(
      id: id ?? this.id,
      amount: amount ?? this.amount,
      type: type ?? this.type,
      description: description ?? this.description,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'amount': amount,
    'type': type.name,
    'description': description,
    'timestamp': timestamp.toIso8601String(),
  };

  factory FinanceTransaction.fromJson(Map<String, dynamic> json) {
    return FinanceTransaction(
      id: json['id'],
      amount: json['amount'],
      type: TransactionType.values.byName(json['type']),
      description: json['description'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }
}
