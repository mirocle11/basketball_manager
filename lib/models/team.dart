import "player.dart";
class Team {
  const Team({
    required this.id,
    required this.name,
    required this.city,
    required this.players,
  });

  final int id;
  final String name;
  final String city;
  final List<Player> players;
}