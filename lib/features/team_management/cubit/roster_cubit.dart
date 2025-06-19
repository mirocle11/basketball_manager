import 'package:flutter_bloc/flutter_bloc.dart';
import 'roster_state.dart';
import 'package:basketball_manager/domain/entities/player.dart';
import 'package:basketball_manager/features/team_management/data/team_repository.dart';

class RosterCubit extends Cubit<RosterState> {
  RosterCubit(this._repo) : super(RosterLoading());

  final PlayerRepository _repo;

  void loadRoster() async {
    try {
      // Simulate delay (optional)
      await Future.delayed(const Duration(milliseconds: 500));

      final roster = _repo.fetchRoster();
      emit(RosterLoaded(roster.cast<Player>()));
    } catch (e) {
      emit(RosterError('Failed to load roster'));
    }
  }
}
