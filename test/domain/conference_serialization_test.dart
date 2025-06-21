import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:basketball_manager/data/local/hive_database.dart' as db;
import 'package:basketball_manager/domain/entities/conference.dart';

void main() {
  setUp(() {
    Hive.init('./test/hive_conference');
    db.HiveDatabase.registerAdapters();
  });

  tearDown(() async {
    await Hive.deleteBoxFromDisk('conferences');
  });

  test('Conference json and Hive round-trip', () async {
    const conference = Conference(id: 'c1', name: 'East');
    final json = conference.toJson();
    final other = Conference.fromJson(json);
    expect(other, conference);

    final box = await Hive.openBox<Conference>('conferences');
    await box.put(conference.id, conference);
    final loaded = box.get(conference.id);
    expect(loaded, conference);
    await box.close();
  });
}
