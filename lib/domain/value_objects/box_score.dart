import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

part 'box_score.g.dart';

@HiveType(typeId: 9)
@JsonSerializable()
class BoxScore extends Equatable {
  const BoxScore({required this.stats});

  @HiveField(0)
  final Map<String, dynamic> stats;

  factory BoxScore.fromJson(Map<String, dynamic> json) =>
      _$BoxScoreFromJson(json);
  Map<String, dynamic> toJson() => _$BoxScoreToJson(this);

  @override
  List<Object?> get props => [stats];
}
