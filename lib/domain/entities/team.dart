import 'player.dart';

class Team {
  Team({
    required this.id,
    required this.name,
    required this.city,
    required this.roster,
    this.wins = 0,
    this.losses = 0,
  });

  final int id;
  final String name;
  final String city;
  final List<Player> roster;
  int wins;
  int losses;

  double get winPct =>
      wins + losses == 0 ? 0 : wins / (wins + losses);

  Team copyWith({
    String? name,
    String? city,
    List<Player>? roster,
    int? wins,
    int? losses,
  }) {
    return Team(
      id: id,
      name: name ?? this.name,
      city: city ?? this.city,
      roster: roster ?? this.roster,
      wins: wins ?? this.wins,
      losses: losses ?? this.losses,
    );
  }
}
