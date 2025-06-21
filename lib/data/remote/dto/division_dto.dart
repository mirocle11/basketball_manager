import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/division.dart';

part 'division_dto.g.dart';

@JsonSerializable()
class DivisionDto {
  const DivisionDto({
    required this.id,
    required this.name,
    required this.conferenceId,
  });

  final String id;
  final String name;
  final String conferenceId;

  factory DivisionDto.fromJson(Map<String, dynamic> json) =>
      _$DivisionDtoFromJson(json);
  Map<String, dynamic> toJson() => _$DivisionDtoToJson(this);

  Division toDomain() =>
      Division(id: id, name: name, conferenceId: conferenceId);
}
