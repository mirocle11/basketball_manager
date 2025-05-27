class Player {
  final String id;
  final String name;
  final int age;
  final String position;
  final int overall;
  final Map<String, int> stats;

  Player({
    required this.id,
    required this.name,
    required this.age,
    required this.position,
    required this.overall,
    required this.stats,
  });

  factory Player.fromJson(Map<String, dynamic> json) {
    return Player(
      id: json['id'] as String,
      name: json['name'] as String,
      age: json['age'] as int,
      position: json['position'] as String,
      overall: json['overall'] as int,
      stats: Map<String, int>.from(json['stats'] as Map),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'position': position,
      'overall': overall,
      'stats': stats,
    };
  }
} 