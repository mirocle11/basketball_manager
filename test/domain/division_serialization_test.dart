import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:basketball_manager/data/local/hive_database.dart' as db;
import 'package:basketball_manager/domain/entities/division.dart';

void main() {
  setUp(() {
    Hive.init('./test/hive_division');
    db.HiveDatabase.registerAdapters();
  });

  tearDown(() async {
    await Hive.deleteBoxFromDisk('divisions');
  });

  test('Division json and Hive round-trip', () async {
    const division = Division(id: 'd1', name: 'Atlantic', conferenceId: 'c1');
    final json = division.toJson();
    final other = Division.fromJson(json);
    expect(other, division);

    final box = await Hive.openBox<Division>('divisions');
    await box.put(division.id, division);
    final loaded = box.get(division.id);
    expect(loaded, division);
    await box.close();
  });
}
