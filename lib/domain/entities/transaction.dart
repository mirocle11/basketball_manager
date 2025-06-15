import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../enums/transaction_type.dart';

part 'transaction.g.dart';

@JsonSerializable(explicitToJson: true)
class Transaction extends Equatable {
  const Transaction({
    required this.id,
    required this.teamId,
    required this.type,
    required this.amount,
    required this.date,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final String teamId;
  final TransactionType type;
  final double amount;
  final DateTime date;
  final DateTime createdAt;
  final DateTime updatedAt;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
  Map<String, dynamic> toJson() => _$TransactionToJson(this);

  @override
  List<Object?> get props => [
        id,
        teamId,
        type,
        amount,
        date,
        createdAt,
        updatedAt,
      ];
}
