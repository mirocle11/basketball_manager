import 'package:flutter_test/flutter_test.dart';
import 'package:basketball_manager/domain/entities/event.dart';
import 'package:basketball_manager/domain/enums/event_type.dart';

void main() {
  test('Event toJson/fromJson', () {
    final event = Event(
      id: 'e1',
      date: DateTime.utc(2024, 3, 1),
      type: EventType.draft,
      effects: const {'key': 'value'},
      createdAt: DateTime.utc(2024, 1, 1),
      updatedAt: DateTime.utc(2024, 1, 2),
    );

    final json = event.toJson();
    final other = Event.fromJson(json);

    expect(other, event);
  });
}
