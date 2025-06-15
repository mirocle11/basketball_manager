import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'record.g.dart';

@JsonSerializable()
class Record extends Equatable {
  const Record({this.wins = 0, this.losses = 0});

  final int wins;
  final int losses;

  factory Record.fromJson(Map<String, dynamic> json) => _$RecordFromJson(json);
  Map<String, dynamic> toJson() => _$RecordToJson(this);

  @override
  List<Object?> get props => [wins, losses];
}
