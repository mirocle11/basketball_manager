import 'package:basketball_manager/domain/entities/basic_team_standing.dart';

class StandingsRepository {
  const StandingsRepository();

  List<BasicTeamStanding> fetchStandings() => const [
    BasicTeamStanding(name: 'Team Titans', wins: 12, losses: 3),
    BasicTeamStanding(name: 'Hoop Heroes', wins: 11, losses: 4),
    BasicTeamStanding(name: 'Basket Brawlers', wins: 9, losses: 6),
    BasicTeamStanding(name: 'Court Crushers', wins: 8, losses: 7),
    BasicTeamStanding(name: 'Net Knights', wins: 7, losses: 8),
    BasicTeamStanding(name: 'Dunk Dynasty', wins: 6, losses: 9),
    BasicTeamStanding(name: 'Ballers United', wins: 5, losses: 10),
    BasicTeamStanding(name: 'Rim Rattlers', wins: 4, losses: 11),
    BasicTeamStanding(name: 'Paint Protectors', wins: 3, losses: 12),
  ];
}