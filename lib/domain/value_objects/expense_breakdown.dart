import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

part 'expense_breakdown.g.dart';

@HiveType(typeId: 11)
@JsonSerializable()
class ExpenseBreakdown extends Equatable {
  const ExpenseBreakdown({
    this.salaries = 0,
    this.travel = 0,
    this.other = 0,
  });

  @HiveField(0)
  final double salaries;
  @HiveField(1)
  final double travel;
  @HiveField(2)
  final double other;

  double get total => salaries + travel + other;

  factory ExpenseBreakdown.fromJson(Map<String, dynamic> json) =>
      _$ExpenseBreakdownFromJson(json);
  Map<String, dynamic> toJson() => _$ExpenseBreakdownToJson(this);

  @override
  List<Object?> get props => [salaries, travel, other];
}
