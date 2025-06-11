import 'package:basketball_manager/domain/entities/player.dart';

class PlayerRepository {
  const PlayerRepository();

  List<Player> fetchRoster() => [
    const Player(
      id: 1,
      name: 'Ethan Carter',
      position: Position.guard,
      rating: 88,
    ),
    const Player(
      id: 2,
      name: 'Liam Bennett',
      position: Position.forward,
      rating: 92,
    ),
    const Player(
      id: 3,
      name: 'Noah Thompson',
      position: Position.center,
      rating: 85,
    ),
    const Player(
      id: 4,
      name: 'Oliver Davis',
      position: Position.guard,
      rating: 89,
    ),
    const Player(
      id: 5,
      name: 'Elijah Wilson',
      position: Position.forward,
      rating: 91,
    ),
    const Player(
      id: 6,
      name: 'Lucas Harris',
      position: Position.center,
      rating: 87,
    ),
    const Player(
      id: 7,
      name: 'Mason Clark',
      position: Position.guard,
      rating: 90,
    ),
    const Player(
      id: 8,
      name: 'Logan Lewis',
      position: Position.forward,
      rating: 86,
    ),
    const Player(
      id: 9,
      name: 'Owen Walker',
      position: Position.center,
      rating: 84,
    ),
  ];
}
