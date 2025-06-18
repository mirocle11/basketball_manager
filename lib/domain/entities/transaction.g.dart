// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transaction _$TransactionFromJson(Map<String, dynamic> json) => Transaction(
      id: json['id'] as String,
      teamId: json['teamId'] as String,
      type: $enumDecode(_$TransactionTypeEnumMap, json['type']),
      amount: (json['amount'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'teamId': instance.teamId,
      'type': _$TransactionTypeEnumMap[instance.type]!,
      'amount': instance.amount,
      'date': instance.date.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$TransactionTypeEnumMap = {
  TransactionType.trade: 'trade',
  TransactionType.signing: 'signing',
  TransactionType.release: 'release',
  TransactionType.salary: 'salary',
};
