import 'package:basketball_manager/features/team_selection/cubit/team_selection_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:basketball_manager/data/local/hive_database.dart' as db;

void main() {
  setUp(() {
    Hive.init('./test/hive_team_select');
    db.HiveDatabase.registerAdapters();
  });

  tearDown(() async {
    await Hive.deleteBoxFromDisk('prefs');
  });

  test('select() updates state', () {
    final cubit = TeamSelectionCubit();
    final id = cubit.state.teams.first.id;
    cubit.select(id);
    expect(cubit.state.selectedId, id);
  });

  test('confirm() persists id', () async {
    final cubit = TeamSelectionCubit();
    final id = cubit.state.teams.first.id;
    cubit.select(id);
    await cubit.confirm();

    final box = await Hive.openBox('prefs');
    expect(box.get('chosenTeamId'), id);
    await box.close();
  });
}
