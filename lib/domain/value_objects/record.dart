import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

part 'record.g.dart';

@HiveType(typeId: 15)
@JsonSerializable()
class Record extends Equatable {
  const Record({this.wins = 0, this.losses = 0});

  @HiveField(0)
  final int wins;
  @HiveField(1)
  final int losses;

  factory Record.fromJson(Map<String, dynamic> json) => _$RecordFromJson(json);
  Map<String, dynamic> toJson() => _$RecordToJson(this);

  @override
  List<Object?> get props => [wins, losses];
}
