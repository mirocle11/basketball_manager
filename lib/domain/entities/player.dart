import 'package:equatable/equatable.dart';

enum Position { guard, forward, center }

class Player extends Equatable {
  const Player({
    required this.id,
    required this.name,
    required this.position,
    required this.rating,
  });

  final int id;
  final String name;
  final Position position;
  final int rating;

  Player copyWith({
    String? name,
    Position? position,
    int? rating,
  }) {
    return Player(
      id: id,
      name: name ?? this.name,
      position: position ?? this.position,
      rating: rating ?? this.rating,
    );
  }

  @override
  List<Object?> get props => [id, name, position, rating];
}
