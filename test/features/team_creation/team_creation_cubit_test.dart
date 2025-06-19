import 'package:basketball_manager/domain/entities/team.dart';
import 'package:basketball_manager/features/team_creation/cubit/team_creation_cubit.dart';
import 'package:basketball_manager/features/team_creation/data/team_repository.dart';
import 'package:basketball_manager/data/local/hive_league_datasource.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeDs extends HiveLeagueDataSource {
  Team? saved;
  @override
  Future<void> saveTeam(Team team) async {
    saved = team;
  }

  @override
  Future<void> init() async {}

  @override
  Team? getTeam(String id) => saved;

  @override
  Stream<List<Team>> watchTeams() => const Stream.empty();
}

class FakeTeamRepository extends TeamRepository {
  FakeTeamRepository(this.ds) : super(ds);
  final FakeDs ds;

  @override
  Future<void> save(Team team) async {
    ds.saved = team;
  }
}

void main() {
  test('emits TeamCreated after valid createTeam call', () async {
    final ds = FakeDs();
    final repo = FakeTeamRepository(ds);
    final cubit = TeamCreationCubit(repo);

    cubit.createTeam(
      name: 'Sharks',
      city: 'SF',
      primaryColor: 'ff0000ff',
      secondaryColor: '00ff00ff',
    );

    await expectLater(
      cubit.stream,
      emits(isA<TeamCreated>()),
    );
  });
}
