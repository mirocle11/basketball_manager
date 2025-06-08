import 'package:basketball_manager/models/player.dart';

/// Temporary in-memory data source.
/// Swap with API or local database when ready.
class PlayerRepository {
  const PlayerRepository();

  List<Player> fetchRoster() => const [
    Player(id: 1, name: 'Ethan Carter',  position: 'Guard',   rating: 88),
    Player(id: 2, name: 'Liam Bennett',  position: 'Forward', rating: 92),
    Player(id: 3, name: 'Noah Thompson', position: 'Center',  rating: 85),
    Player(id: 4, name: 'Oliver Davis',  position: 'Guard',   rating: 89),
    Player(id: 5, name: 'Elijah Wilson', position: 'Forward', rating: 91),
    Player(id: 6, name: 'Lucas Harris',  position: 'Center',  rating: 87),
    Player(id: 7, name: 'Mason Clark',   position: 'Guard',   rating: 90),
    Player(id: 8, name: 'Logan Lewis',   position: 'Forward', rating: 86),
    Player(id: 9, name: 'Owen Walker',   position: 'Center',  rating: 84),
  ];
}