import 'package:basketball_manager/models/team_standing.dart';

class StandingsRepository {
  const StandingsRepository();

  List<TeamStanding> fetchStandings() => const [
    TeamStanding(name: 'Team Titans', wins: 12, losses: 3),
    TeamStanding(name: 'Hoop Heroes', wins: 11, losses: 4),
    TeamStanding(name: 'Basket Brawlers', wins: 9, losses: 6),
    TeamStanding(name: 'Court Crushers', wins: 8, losses: 7),
    TeamStanding(name: 'Net Knights', wins: 7, losses: 8),
    TeamStanding(name: 'Dunk Dynasty', wins: 6, losses: 9),
    TeamStanding(name: 'Ballers United', wins: 5, losses: 10),
    TeamStanding(name: 'Rim Rattlers', wins: 4, losses: 11),
    TeamStanding(name: 'Paint Protectors', wins: 3, losses: 12),
  ];
}