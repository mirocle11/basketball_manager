import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

part 'injury_status.g.dart';

@HiveType(typeId: 13)
@JsonSerializable()
class InjuryStatus extends Equatable {
  const InjuryStatus({required this.isInjured, this.description, this.until});

  @HiveField(0)
  final bool isInjured;
  @HiveField(1)
  final String? description;
  @HiveField(2)
  final DateTime? until;

  factory InjuryStatus.fromJson(Map<String, dynamic> json) =>
      _$InjuryStatusFromJson(json);
  Map<String, dynamic> toJson() => _$InjuryStatusToJson(this);

  @override
  List<Object?> get props => [isInjured, description, until];
}
