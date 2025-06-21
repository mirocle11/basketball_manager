import 'package:hive/hive.dart';

import '../../../domain/entities/gm_profile.dart';

class GmProfileRepository {
  static const _boxName = 'gm_profiles';

  Future<void> save(GMProfile profile) async {
    final box = await Hive.openBox<GMProfile>(_boxName);
    await box.put(profile.id, profile);
    await box.close();
  }
}
