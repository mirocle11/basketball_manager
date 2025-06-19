import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

import '../../../domain/entities/team.dart';
import '../../../domain/value_objects/record.dart';
import '../../../domain/value_objects/team_colors.dart';
import '../data/team_repository.dart';

sealed class TeamCreationState {}

class TeamCreationInitial extends TeamCreationState {}

class TeamCreationLoading extends TeamCreationState {}

class TeamCreated extends TeamCreationState {
  final Team team;
  TeamCreated(this.team);
}

class TeamCreationError extends TeamCreationState {
  final String message;
  TeamCreationError(this.message);
}

class TeamCreationCubit extends Cubit<TeamCreationState> {
  TeamCreationCubit(this._repository) : super(TeamCreationInitial());

  final TeamRepository _repository;

  Future<void> createTeam({
    required String name,
    required String city,
    required String primaryColor,
    required String secondaryColor,
  }) async {
    emit(TeamCreationLoading());
    try {
      final now = DateTime.now();
      final team = Team(
        id: const Uuid().v4(),
        leagueId: 'league_1',
        name: name,
        city: city,
        colors: TeamColors(primary: primaryColor, secondary: secondaryColor),
        budget: 30000000,
        payroll: 0,
        prestige: 50,
        record: const Record(),
        createdAt: now,
        updatedAt: now,
      );
      await _repository.save(team);
      emit(TeamCreated(team));
    } catch (e) {
      emit(TeamCreationError(e.toString()));
    }
  }
}
