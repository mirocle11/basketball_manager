import 'package:flutter_test/flutter_test.dart';
import 'package:basketball_manager/core/util/result.dart';

void main() {
  group('Either', () {
    test('right value flows through fold', () {
      const Result<int> result = Right(42);

      final value = result.fold((_) => -1, (r) => r);

      expect(value, 42);
      expect(result.isRight, isTrue);
      expect(result.isLeft, isFalse);
      expect(result.rightOrNull, 42);
      expect(result.leftOrNull, isNull);
    });

    test('left value flows through fold', () {
      const failure = Failure('error');
      const Result<int> result = Left(failure);

      final value = result.fold((f) => f.message, (_) => 'success');

      expect(value, 'error');
      expect(result.isLeft, isTrue);
      expect(result.isRight, isFalse);
      expect(result.leftOrNull, failure);
      expect(result.rightOrNull, isNull);
    });
  });
}
