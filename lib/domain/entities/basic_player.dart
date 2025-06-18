import 'package:equatable/equatable.dart';

enum Position { guard, forward, center }

class BasicPlayer extends Equatable {
  const BasicPlayer({
    required this.id,
    required this.name,
    required this.position,
    required this.rating,
  });

  final int id;
  final String name;
  final Position position;
  final int rating;

  BasicPlayer copyWith({
    String? name,
    Position? position,
    int? rating,
  }) {
    return BasicPlayer(
      id: id,
      name: name ?? this.name,
      position: position ?? this.position,
      rating: rating ?? this.rating,
    );
  }

  @override
  List<Object?> get props => [id, name, position, rating];
}
