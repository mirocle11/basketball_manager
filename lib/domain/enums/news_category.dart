import 'package:hive/hive.dart';

part 'news_category.g.dart';

@HiveType(typeId: 20)
enum NewsCategory {
  @HiveField(0)
  gameRecap,
  @HiveField(1)
  injury,
  @HiveField(2)
  trade,
  @HiveField(3)
  offCourt,
}
