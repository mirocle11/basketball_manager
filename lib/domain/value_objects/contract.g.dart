// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contract _$ContractFromJson(Map<String, dynamic> json) => Contract(
      salary: (json['salary'] as num).toDouble(),
      years: (json['years'] as num).toInt(),
      startYear: (json['startYear'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ContractToJson(Contract instance) => <String, dynamic>{
      'salary': instance.salary,
      'years': instance.years,
      'startYear': instance.startYear,
    };
