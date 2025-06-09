import 'package:basketball_manager/models/player.dart';
import 'package:basketball_manager/models/team.dart';

/// Temporary in-memory data for league teams and rosters.
class LeagueRepository {
  const LeagueRepository();

  List<Team> fetchTeams() => const [
    Team(
      id: 1,
      name: 'Sharks',
      city: 'San Francisco',
      players: [
        Player(id: 101, name: 'Aiden King', position: 'Guard', rating: 84),
        Player(id: 102, name: 'Caleb Wright', position: 'Forward', rating: 86),
        Player(id: 103, name: 'Wyatt Hill', position: 'Center', rating: 83),
      ],
    ),
    Team(
      id: 2,
      name: 'Wildcats',
      city: 'Chicago',
      players: [
        Player(id: 201, name: 'Xavier Green', position: 'Guard', rating: 88),
        Player(id: 202, name: 'Nathan Young', position: 'Forward', rating: 85),
        Player(id: 203, name: 'Ian Adams', position: 'Center', rating: 82),
      ],
    ),
    Team(
      id: 3,
      name: 'Eagles',
      city: 'New York',
      players: [
        Player(id: 301, name: 'Victor Baker', position: 'Guard', rating: 87),
        Player(id: 302, name: 'Henry Collins', position: 'Forward', rating: 89),
        Player(id: 303, name: 'Adam Perez', position: 'Center', rating: 84),
      ],
    ),
  ];
}