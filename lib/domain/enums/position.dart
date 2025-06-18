import 'package:hive/hive.dart';

part 'position.g.dart';

@HiveType(typeId: 21)
enum Position {
  @HiveField(0)
  pg,
  @HiveField(1)
  sg,
  @HiveField(2)
  sf,
  @HiveField(3)
  pf,
  @HiveField(4)
  c,
}
