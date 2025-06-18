import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

import '../enums/event_type.dart';

part 'event.g.dart';

@HiveType(typeId: 8)
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

  @HiveField(0)
  final String id;
  @HiveField(1)
  final DateTime date;
  @HiveField(2)
  final EventType type;
  @HiveField(3)
  final Map<String, dynamic> effects;
  @HiveField(4)
  final DateTime createdAt;
  @HiveField(5)
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
