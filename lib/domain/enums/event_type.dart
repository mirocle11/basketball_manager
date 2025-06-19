import 'package:hive/hive.dart';

part 'event_type.g.dart';

@HiveType(typeId: 19)
enum EventType {
  @HiveField(0)
  draft,
  @HiveField(1)
  allStar,
  @HiveField(2)
  deadline,
}
