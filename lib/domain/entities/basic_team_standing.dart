class BasicTeamStanding {
  const BasicTeamStanding({
    required this.name, required this.wins, required this.losses
  });

  final String name;
  final int wins;
  final int losses;

  double get winPercentage => wins / (wins + losses);
}