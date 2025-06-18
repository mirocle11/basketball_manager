// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_item.dart';

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
