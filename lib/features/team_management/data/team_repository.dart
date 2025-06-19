import 'package:basketball_manager/domain/entities/basic_player.dart';

class PlayerRepository {
  const PlayerRepository();

  List<BasicPlayer> fetchRoster() => [
    const BasicPlayer(
      id: 1,
      name: 'Ethan Carter',
      position: Position.guard,
      rating: 88,
    ),
    const BasicPlayer(
      id: 2,
      name: 'Liam Bennett',
      position: Position.forward,
      rating: 92,
    ),
    const BasicPlayer(
      id: 3,
      name: 'Noah Thompson',
      position: Position.center,
      rating: 85,
    ),
    const BasicPlayer(
      id: 4,
      name: 'Oliver Davis',
      position: Position.guard,
      rating: 89,
    ),
    const BasicPlayer(
      id: 5,
      name: 'Elijah Wilson',
      position: Position.forward,
      rating: 91,
    ),
    const BasicPlayer(
      id: 6,
      name: 'Lucas Harris',
      position: Position.center,
      rating: 87,
    ),
    const BasicPlayer(
      id: 7,
      name: 'Mason Clark',
      position: Position.guard,
      rating: 90,
    ),
    const BasicPlayer(
      id: 8,
      name: 'Logan Lewis',
      position: Position.forward,
      rating: 86,
    ),
    const BasicPlayer(
      id: 9,
      name: 'Owen Walker',
      position: Position.center,
      rating: 84,
    ),
  ];
}
