import 'package:hive/hive.dart';

part 'transaction_type.g.dart';

@HiveType(typeId: 22)
enum TransactionType {
  @HiveField(0)
  trade,
  @HiveField(1)
  signing,
  @HiveField(2)
  release,
  @HiveField(3)
  salary,
}
