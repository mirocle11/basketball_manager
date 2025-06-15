import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'box_score.g.dart';

@JsonSerializable()
class BoxScore extends Equatable {
  const BoxScore({required this.stats});

  final Map<String, dynamic> stats;

  factory BoxScore.fromJson(Map<String, dynamic> json) =>
      _$BoxScoreFromJson(json);
  Map<String, dynamic> toJson() => _$BoxScoreToJson(this);

  @override
  List<Object?> get props => [stats];
}
