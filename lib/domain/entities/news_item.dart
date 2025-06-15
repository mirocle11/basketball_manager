import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../enums/news_category.dart';

part 'news_item.g.dart';

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

  final String id;
  final DateTime date;
  final NewsCategory category;
  final String headline;
  final String body;
  final List<String> relatedIds;
  final DateTime createdAt;
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
