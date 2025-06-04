import 'package:equatable/equatable.dart';

// Models
class Team extends Equatable {
  final String id;
  final String name;
  final List<Player> players;
  final double budget;

  const Team({
    required this.id,
    required this.name,
    required this.players,
    required this.budget,
  });

  @override
  List<Object> get props => [id, name, players, budget];
}

class Player extends Equatable {
  final String id;
  final String name;
  final int age;
  final String position;
  final int rating;

  const Player({
    required this.id,
    required this.name,
    required this.age,
    required this.position,
    required this.rating,
  });

  @override
  List<Object> get props => [id, name, age, position, rating];
}

// Repository
class TeamRepository {
  Team? _currentTeam;

  Future<Team?> getCurrentTeam() async {
    return _currentTeam;
  }

  Future<void> saveTeam(Team team) async {
    _currentTeam = team;
    // TODO: Implement persistence
  }

  Future<void> updatePlayer(String playerId, Player updatedPlayer) async {
    if (_currentTeam == null) return;

    final updatedPlayers = _currentTeam!.players.map((player) {
      return player.id == playerId ? updatedPlayer : player;
    }).toList();

    _currentTeam = Team(
      id: _currentTeam!.id,
      name: _currentTeam!.name,
      players: updatedPlayers,
      budget: _currentTeam!.budget,
    );
  }
} 