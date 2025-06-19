import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

part 'contract.g.dart';

@HiveType(typeId: 10)
@JsonSerializable()
class Contract extends Equatable {
  const Contract({required this.salary, required this.years, this.startYear});

  @HiveField(0)
  final double salary;
  @HiveField(1)
  final int years;
  @HiveField(2)
  final int? startYear;

  factory Contract.fromJson(Map<String, dynamic> json) =>
      _$ContractFromJson(json);
  Map<String, dynamic> toJson() => _$ContractToJson(this);

  @override
  List<Object?> get props => [salary, years, startYear];
}
