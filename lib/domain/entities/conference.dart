import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

part 'conference.g.dart';

@HiveType(typeId: 23)
@JsonSerializable()
class Conference extends Equatable {
  const Conference({required this.id, required this.name});

  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;

  factory Conference.fromJson(Map<String, dynamic> json) =>
      _$ConferenceFromJson(json);
  Map<String, dynamic> toJson() => _$ConferenceToJson(this);

  @override
  List<Object?> get props => [id, name];
}
