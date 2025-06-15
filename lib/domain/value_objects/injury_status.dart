import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'injury_status.g.dart';

@JsonSerializable()
class InjuryStatus extends Equatable {
  const InjuryStatus({required this.isInjured, this.description, this.until});

  final bool isInjured;
  final String? description;
  final DateTime? until;

  factory InjuryStatus.fromJson(Map<String, dynamic> json) =>
      _$InjuryStatusFromJson(json);
  Map<String, dynamic> toJson() => _$InjuryStatusToJson(this);

  @override
  List<Object?> get props => [isInjured, description, until];
}
