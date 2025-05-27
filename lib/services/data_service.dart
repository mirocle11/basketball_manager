import '../models/player.dart';

class DataService {
  // Singleton pattern
  static final DataService _instance = DataService._internal();
  factory DataService() => _instance;
  DataService._internal();

  // In-memory storage (replace with proper database later)
  final List<Player> _players = [];
  final Map<String, int> _teamStats = {
    'Wins': 0,
    'Losses': 0,
    'Points Scored': 0,
    'Points Allowed': 0,
  };

  // Player management
  List<Player> get players => List.unmodifiable(_players);
  
  void addPlayer(Player player) {
    _players.add(player);
  }

  void removePlayer(String playerId) {
    _players.removeWhere((player) => player.id == playerId);
  }

  // Team stats management
  Map<String, int> get teamStats => Map.unmodifiable(_teamStats);
  
  void updateStat(String stat, int value) {
    if (_teamStats.containsKey(stat)) {
      _teamStats[stat] = value;
    }
  }

  void incrementStat(String stat) {
    if (_teamStats.containsKey(stat)) {
      _teamStats[stat] = (_teamStats[stat] ?? 0) + 1;
    }
  }
} 