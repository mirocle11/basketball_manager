import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'expense_breakdown.g.dart';

@JsonSerializable()
class ExpenseBreakdown extends Equatable {
  const ExpenseBreakdown({
    this.salaries = 0,
    this.travel = 0,
    this.other = 0,
  });

  final double salaries;
  final double travel;
  final double other;

  double get total => salaries + travel + other;

  factory ExpenseBreakdown.fromJson(Map<String, dynamic> json) =>
      _$ExpenseBreakdownFromJson(json);
  Map<String, dynamic> toJson() => _$ExpenseBreakdownToJson(this);

  @override
  List<Object?> get props => [salaries, travel, other];
}
