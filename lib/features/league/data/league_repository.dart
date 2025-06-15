import 'package:basketball_manager/domain/entities/basic_team.dart';
import 'package:basketball_manager/domain/entities/basic_player.dart';

class LeagueRepository {
  const LeagueRepository();

  List<BasicTeam> fetchTeams() => [
    BasicTeam(
      id: 1,
      name: 'Sharks',
      city: 'San Francisco',
      roster: const [
        BasicPlayer(id: 101, name: 'Aiden King', position: Position.guard,   rating: 88),
        BasicPlayer(id: 102, name: 'Caleb Wright', position: Position.forward, rating: 80),
        BasicPlayer(id: 103, name: 'Wyatt Hill', position: Position.center,  rating: 83),
      ],
    ),
    BasicTeam(
      id: 2,
      name: 'Wildcats',
      city: 'Chicago',
      roster: const [
        BasicPlayer(id: 201, name: 'Xavier Green', position: Position.guard,   rating: 90),
        BasicPlayer(id: 202, name: 'Nathan Young', position: Position.forward, rating: 85),
        BasicPlayer(id: 203, name: 'Ian Adams', position: Position.center,  rating: 82),
      ],
    ),
    BasicTeam(
      id: 3,
      name: 'Eagles',
      city: 'New York',
      roster: const [
        BasicPlayer(id: 301, name: 'Victor Baker', position: Position.guard,   rating: 87),
        BasicPlayer(id: 302, name: 'Henry Collins', position: Position.forward, rating: 89),
        BasicPlayer(id: 303, name: 'Adam Perez', position: Position.center,  rating: 84),
      ],
    ),
  ];
}
