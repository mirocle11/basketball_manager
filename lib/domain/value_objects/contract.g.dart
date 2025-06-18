// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ContractAdapter extends TypeAdapter<Contract> {
  @override
  final int typeId = 10;

  @override
  Contract read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Contract(
      salary: fields[0] as double,
      years: fields[1] as int,
      startYear: fields[2] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Contract obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.salary)
      ..writeByte(1)
      ..write(obj.years)
      ..writeByte(2)
      ..write(obj.startYear);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContractAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
