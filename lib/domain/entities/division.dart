import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

part 'division.g.dart';

@HiveType(typeId: 24)
@JsonSerializable()
class Division extends Equatable {
  const Division(
      {required this.id, required this.name, required this.conferenceId});

  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String conferenceId;

  factory Division.fromJson(Map<String, dynamic> json) =>
      _$DivisionFromJson(json);
  Map<String, dynamic> toJson() => _$DivisionToJson(this);

  @override
  List<Object?> get props => [id, name, conferenceId];
}
