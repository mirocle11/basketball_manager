// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_item.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NewsItemAdapter extends TypeAdapter<NewsItem> {
  @override
  final int typeId = 7;

  @override
  NewsItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NewsItem(
      id: fields[0] as String,
      date: fields[1] as DateTime,
      category: fields[2] as NewsCategory,
      headline: fields[3] as String,
      body: fields[4] as String,
      relatedIds: (fields[5] as List).cast<String>(),
      createdAt: fields[6] as DateTime,
      updatedAt: fields[7] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, NewsItem obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.date)
      ..writeByte(2)
      ..write(obj.category)
      ..writeByte(3)
      ..write(obj.headline)
      ..writeByte(4)
      ..write(obj.body)
      ..writeByte(5)
      ..write(obj.relatedIds)
      ..writeByte(6)
      ..write(obj.createdAt)
      ..writeByte(7)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewsItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsItem _$NewsItemFromJson(Map<String, dynamic> json) => NewsItem(
      id: json['id'] as String,
      date: DateTime.parse(json['date'] as String),
      category: $enumDecode(_$NewsCategoryEnumMap, json['category']),
      headline: json['headline'] as String,
      body: json['body'] as String,
      relatedIds: (json['relatedIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$NewsItemToJson(NewsItem instance) => <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'category': _$NewsCategoryEnumMap[instance.category]!,
      'headline': instance.headline,
      'body': instance.body,
      'relatedIds': instance.relatedIds,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$NewsCategoryEnumMap = {
  NewsCategory.gameRecap: 'gameRecap',
  NewsCategory.injury: 'injury',
  NewsCategory.trade: 'trade',
  NewsCategory.offCourt: 'offCourt',
};
