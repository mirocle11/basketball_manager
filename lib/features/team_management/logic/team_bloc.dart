import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../data/team_repository.dart';

// Events
abstract class TeamEvent extends Equatable {
  const TeamEvent();

  @override
  List<Object> get props => [];
}

class LoadTeam extends TeamEvent {}

class UpdateTeam extends TeamEvent {
  final Team team;

  const UpdateTeam(this.team);

  @override
  List<Object> get props => [team];
}

class UpdatePlayer extends TeamEvent {
  final String playerId;
  final Player player;

  const UpdatePlayer(this.playerId, this.player);

  @override
  List<Object> get props => [playerId, player];
}

// States
abstract class TeamState extends Equatable {
  const TeamState();

  @override
  List<Object?> get props => [];
}

class TeamInitial extends TeamState {}

class TeamLoading extends TeamState {}

class TeamLoaded extends TeamState {
  final Team team;

  const TeamLoaded(this.team);

  @override
  List<Object> get props => [team];
}

class TeamError extends TeamState {
  final String message;

  const TeamError(this.message);

  @override
  List<Object> get props => [message];
}

// BLoC
class TeamBloc extends Bloc<TeamEvent, TeamState> {
  final TeamRepository _teamRepository;

  TeamBloc({required TeamRepository teamRepository})
      : _teamRepository = teamRepository,
        super(TeamInitial()) {
    on<LoadTeam>(_onLoadTeam);
    on<UpdateTeam>(_onUpdateTeam);
    on<UpdatePlayer>(_onUpdatePlayer);
  }

  Future<void> _onLoadTeam(LoadTeam event, Emitter<TeamState> emit) async {
    emit(TeamLoading());
    try {
      final team = await _teamRepository.getCurrentTeam();
      if (team != null) {
        emit(TeamLoaded(team));
      } else {
        emit(const TeamError('No team found'));
      }
    } catch (e) {
      emit(TeamError(e.toString()));
    }
  }

  Future<void> _onUpdateTeam(UpdateTeam event, Emitter<TeamState> emit) async {
    emit(TeamLoading());
    try {
      await _teamRepository.saveTeam(event.team);
      emit(TeamLoaded(event.team));
    } catch (e) {
      emit(TeamError(e.toString()));
    }
  }

  Future<void> _onUpdatePlayer(UpdatePlayer event, Emitter<TeamState> emit) async {
    if (state is TeamLoaded) {
      final currentTeam = (state as TeamLoaded).team;
      emit(TeamLoading());
      try {
        await _teamRepository.updatePlayer(event.playerId, event.player);
        final updatedTeam = await _teamRepository.getCurrentTeam();
        if (updatedTeam != null) {
          emit(TeamLoaded(updatedTeam));
        } else {
          emit(TeamLoaded(currentTeam));
        }
      } catch (e) {
        emit(TeamError(e.toString()));
      }
    }
  }
} 