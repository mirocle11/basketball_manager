// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injury_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InjuryStatus _$InjuryStatusFromJson(Map<String, dynamic> json) => InjuryStatus(
      isInjured: json['isInjured'] as bool,
      description: json['description'] as String?,
      until: json['until'] == null
          ? null
          : DateTime.parse(json['until'] as String),
    );

Map<String, dynamic> _$InjuryStatusToJson(InjuryStatus instance) =>
    <String, dynamic>{
      'isInjured': instance.isInjured,
      'description': instance.description,
      'until': instance.until?.toIso8601String(),
    };
