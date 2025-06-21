import 'package:basketball_manager/features/gm_creation/cubit/gm_creation_cubit.dart';
import 'package:basketball_manager/features/gm_creation/data/gm_profile_repository.dart';
import 'package:basketball_manager/domain/entities/gm_profile.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:basketball_manager/data/local/hive_database.dart' as db;

void main() {
  setUp(() {
    Hive.init('./test/gm_profile');
    db.HiveDatabase.registerAdapters();
  });

  tearDown(() async {
    await Hive.deleteBoxFromDisk('gm_profiles');
  });

  test('submit() saves GMProfile in Hive box', () async {
    final repo = GmProfileRepository();
    final cubit = GmCreationCubit(repo);
    cubit.setName('Alex');
    cubit.selectAvatar('path');
    await cubit.submit();

    final box = await Hive.openBox<GMProfile>('gm_profiles');
    expect(box.values.length, 1);
    final profile = box.values.first;
    expect(profile.name, 'Alex');
    expect(profile.avatarPath, 'path');
    await box.close();
  });
}
