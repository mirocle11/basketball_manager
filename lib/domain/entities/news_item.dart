import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

import '../enums/news_category.dart';

part 'news_item.g.dart';

@HiveType(typeId: 7)
@JsonSerializable(explicitToJson: true)
class NewsItem extends Equatable {
  const NewsItem({
    required this.id,
    required this.date,
    required this.category,
    required this.headline,
    required this.body,
    required this.relatedIds,
    required this.createdAt,
    required this.updatedAt,
  });

  @HiveField(0)
  final String id;
  @HiveField(1)
  final DateTime date;
  @HiveField(2)
  final NewsCategory category;
  @HiveField(3)
  final String headline;
  @HiveField(4)
  final String body;
  @HiveField(5)
  final List<String> relatedIds;
  @HiveField(6)
  final DateTime createdAt;
  @HiveField(7)
  final DateTime updatedAt;

  factory NewsItem.fromJson(Map<String, dynamic> json) =>
      _$NewsItemFromJson(json);
  Map<String, dynamic> toJson() => _$NewsItemToJson(this);

  @override
  List<Object?> get props => [
        id,
        date,
        category,
        headline,
        body,
        relatedIds,
        createdAt,
        updatedAt,
      ];
}
