import 'package:basketball_manager/domain/entities/player.dart';

sealed class RosterState {}

class RosterLoading extends RosterState {}

class RosterLoaded extends RosterState {
  final List<Player> players;
  RosterLoaded(this.players);
}

class RosterError extends RosterState {
  final String message;
  RosterError(this.message);
}
