import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

import '../enums/transaction_type.dart';

part 'transaction.g.dart';

@HiveType(typeId: 5)
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

  @HiveField(0)
  final String id;
  @HiveField(1)
  final String teamId;
  @HiveField(2)
  final TransactionType type;
  @HiveField(3)
  final double amount;
  @HiveField(4)
  final DateTime date;
  @HiveField(5)
  final DateTime createdAt;
  @HiveField(6)
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
