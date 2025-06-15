import 'package:flutter_test/flutter_test.dart';
import 'package:basketball_manager/domain/entities/news_item.dart';
import 'package:basketball_manager/domain/enums/news_category.dart';

void main() {
  test('NewsItem toJson/fromJson', () {
    final item = NewsItem(
      id: 'n1',
      date: DateTime.utc(2024, 2, 1),
      category: NewsCategory.trade,
      headline: 'Headline',
      body: 'Body',
      relatedIds: const ['1'],
      createdAt: DateTime.utc(2024, 1, 1),
      updatedAt: DateTime.utc(2024, 1, 2),
    );

    final json = item.toJson();
    final other = NewsItem.fromJson(json);

    expect(other, item);
  });
}
