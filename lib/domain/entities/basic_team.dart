import 'basic_player.dart';

class BasicTeam {
  BasicTeam({
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
  final List<BasicPlayer> roster;
  int wins;
  int losses;

  double get winPct =>
      wins + losses == 0 ? 0 : wins / (wins + losses);

  BasicTeam copyWith({
    String? name,
    String? city,
    List<BasicPlayer>? roster,
    int? wins,
    int? losses,
  }) {
    return BasicTeam(
      id: id,
      name: name ?? this.name,
      city: city ?? this.city,
      roster: roster ?? this.roster,
      wins: wins ?? this.wins,
      losses: losses ?? this.losses,
    );
  }
}
