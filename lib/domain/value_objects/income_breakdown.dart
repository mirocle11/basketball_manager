import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

part 'income_breakdown.g.dart';

@HiveType(typeId: 12)
@JsonSerializable()
class IncomeBreakdown extends Equatable {
  const IncomeBreakdown({
    this.ticketSales = 0,
    this.merchandise = 0,
    this.other = 0,
  });

  @HiveField(0)
  final double ticketSales;
  @HiveField(1)
  final double merchandise;
  @HiveField(2)
  final double other;

  double get total => ticketSales + merchandise + other;

  factory IncomeBreakdown.fromJson(Map<String, dynamic> json) =>
      _$IncomeBreakdownFromJson(json);
  Map<String, dynamic> toJson() => _$IncomeBreakdownToJson(this);

  @override
  List<Object?> get props => [ticketSales, merchandise, other];
}
