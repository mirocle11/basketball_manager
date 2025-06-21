import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/conference.dart';

part 'conference_dto.g.dart';

@JsonSerializable()
class ConferenceDto {
  const ConferenceDto({required this.id, required this.name});

  final String id;
  final String name;

  factory ConferenceDto.fromJson(Map<String, dynamic> json) =>
      _$ConferenceDtoFromJson(json);
  Map<String, dynamic> toJson() => _$ConferenceDtoToJson(this);

  Conference toDomain() => Conference(id: id, name: name);
}
