enum BasicTransactionType { credit, debit }

class BasicFinanceTransaction {
  const BasicFinanceTransaction({
    required this.id,
    required this.amount,
    required this.type,
    required this.description,
    required this.timestamp,
  });

  final String id; // UUID or hash
  final double amount;
  final BasicTransactionType type;
  final String description;
  final DateTime timestamp;

  BasicFinanceTransaction copyWith({
    String? id,
    double? amount,
    BasicTransactionType? type,
    String? description,
    DateTime? timestamp,
  }) {
    return BasicFinanceTransaction(
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

  factory BasicFinanceTransaction.fromJson(Map<String, dynamic> json) {
    return BasicFinanceTransaction(
      id: json['id'],
      amount: json['amount'],
      type: BasicTransactionType.values.byName(json['type']),
      description: json['description'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }
}
