import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'contract.g.dart';

@JsonSerializable()
class Contract extends Equatable {
  const Contract({required this.salary, required this.years, this.startYear});

  final double salary;
  final int years;
  final int? startYear;

  factory Contract.fromJson(Map<String, dynamic> json) =>
      _$ContractFromJson(json);
  Map<String, dynamic> toJson() => _$ContractToJson(this);

  @override
  List<Object?> get props => [salary, years, startYear];
}
