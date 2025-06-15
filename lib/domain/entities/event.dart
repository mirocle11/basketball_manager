import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../enums/event_type.dart';

part 'event.g.dart';

@JsonSerializable(explicitToJson: true)
class Event extends Equatable {
  const Event({
    required this.id,
    required this.date,
    required this.type,
    required this.effects,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final DateTime date;
  final EventType type;
  final Map<String, dynamic> effects;
  final DateTime createdAt;
  final DateTime updatedAt;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
  Map<String, dynamic> toJson() => _$EventToJson(this);

  @override
  List<Object?> get props => [
        id,
        date,
        type,
        effects,
        createdAt,
        updatedAt,
      ];
}
