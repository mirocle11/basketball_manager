import 'package:flutter_test/flutter_test.dart';
import 'package:basketball_manager/domain/entities/transaction.dart';
import 'package:basketball_manager/domain/enums/transaction_type.dart';

void main() {
  test('Transaction toJson/fromJson', () {
    final txn = Transaction(
      id: 't1',
      teamId: 'team',
      type: TransactionType.signing,
      amount: 5.0,
      date: DateTime.utc(2024, 1, 10),
      createdAt: DateTime.utc(2024, 1, 1),
      updatedAt: DateTime.utc(2024, 1, 2),
    );

    final json = txn.toJson();
    final other = Transaction.fromJson(json);

    expect(other, txn);
  });
}
