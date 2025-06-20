import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

part 'team_selection_state.dart';

class TeamSelectionCubit extends Cubit<TeamSelectionState> {
  TeamSelectionCubit() : super(TeamSelectionState(_teams));

  static const _prefsBox = 'prefs';
  static const _chosenKey = 'chosenTeamId';

  static const List<Team> _teams = [
    Team(
      id: 'NEO',
      name: 'Neon Oni',
      logoPath: 'assets/logos/NEO.png',
      difficulty: 1,
      pros: ['Young core'],
      cons: ['Unproven coach'],
    ),
    Team(
      id: 'HBS',
      name: 'Harbor Seals',
      logoPath: 'assets/logos/HBS.png',
      difficulty: 2,
      pros: ['Loyal fans'],
      cons: ['Small market'],
    ),
    Team(
      id: 'GFL',
      name: 'Gulf Flyers',
      logoPath: 'assets/logos/GFL.png',
      difficulty: 3,
      pros: ['Big budget'],
      cons: ['Aging roster'],
    ),
    Team(
      id: 'LAX',
      name: 'LA Express',
      logoPath: 'assets/logos/LAX.png',
      difficulty: 2,
      pros: ['Star player'],
      cons: ['High expectations'],
    ),
    Team(
      id: 'CHI',
      name: 'Chicago Wind',
      logoPath: 'assets/logos/CHI.png',
      difficulty: 1,
      pros: ['Historic arena'],
      cons: ['Rebuild phase'],
    ),
    Team(
      id: 'NYC',
      name: 'NY Comets',
      logoPath: 'assets/logos/NYC.png',
      difficulty: 3,
      pros: ['Huge market'],
      cons: ['Tough media'],
    ),
    Team(
      id: 'BOS',
      name: 'Boston Bash',
      logoPath: 'assets/logos/BOS.png',
      difficulty: 2,
      pros: ['Winning culture'],
      cons: ['Aging stars'],
    ),
    Team(
      id: 'SEA',
      name: 'Seattle Stormers',
      logoPath: 'assets/logos/SEA.png',
      difficulty: 1,
      pros: ['Fan support'],
      cons: ['Rainy market'],
    ),
    Team(
      id: 'DAL',
      name: 'Dallas Drillers',
      logoPath: 'assets/logos/DAL.png',
      difficulty: 2,
      pros: ['Strong front office'],
      cons: ['Tough division'],
    ),
    Team(
      id: 'ATL',
      name: 'Atlanta Air',
      logoPath: 'assets/logos/ATL.png',
      difficulty: 1,
      pros: ['Athletic roster'],
      cons: ['Inexperienced'],
    ),
  ];

  void select(String id) {
    emit(TeamSelectionState(state.teams, selectedId: id));
  }

  Future<void> confirm() async {
    final id = state.selectedId;
    if (id == null) return;
    final box = await Hive.openBox(_prefsBox);
    await box.put(_chosenKey, id);
    emit(TeamChosen(state.teams, id));
  }
}
