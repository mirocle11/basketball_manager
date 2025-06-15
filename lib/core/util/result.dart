import 'package:equatable/equatable.dart';

/// Represents an error that occurred while executing an operation.
class Failure extends Equatable {
  const Failure(this.message);

  /// A human readable description of the failure.
  final String message;

  @override
  List<Object?> get props => [message];

  @override
  String toString() => 'Failure(message: $message)';
}

/// A value of one of two possible types (a disjoint union).
/// Instances of [Either] are either an instance of [Left] or [Right].
abstract class Either<L, R> {
  const Either();

  /// Applies [left] if this is a [Left] or [right] if this is a [Right].
  T fold<T>(T Function(L l) left, T Function(R r) right);

  /// Returns `true` if this is a [Left].
  bool get isLeft;

  /// Returns `true` if this is a [Right].
  bool get isRight;

  /// Returns the [Left] value or `null` if this is a [Right].
  L? get leftOrNull;

  /// Returns the [Right] value or `null` if this is a [Left].
  R? get rightOrNull;
}

/// Represents the left side of [Either] which by convention is a failure.
class Left<L, R> extends Either<L, R> {
  const Left(this.value);

  final L value;

  @override
  T fold<T>(T Function(L l) left, T Function(R r) right) => left(value);

  @override
  bool get isLeft => true;

  @override
  bool get isRight => false;

  @override
  L? get leftOrNull => value;

  @override
  R? get rightOrNull => null;
}

/// Represents the right side of [Either] which by convention is a success.
class Right<L, R> extends Either<L, R> {
  const Right(this.value);

  final R value;

  @override
  T fold<T>(T Function(L l) left, T Function(R r) right) => right(value);

  @override
  bool get isLeft => false;

  @override
  bool get isRight => true;

  @override
  L? get leftOrNull => null;

  @override
  R? get rightOrNull => value;
}

/// Convenient alias for an [Either] whose left side is a [Failure].
typedef Result<T> = Either<Failure, T>;
