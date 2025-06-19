import 'package:basketball_manager/features/intro/intro_story_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('IntroStoryScreen shows Continue button at end', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: IntroStoryScreen()));
    await tester.pump();
    await tester.fling(find.byType(PageView), const Offset(-400, 0), 1000);
    await tester.pump(const Duration(seconds: 1));
    await tester.fling(find.byType(PageView), const Offset(-400, 0), 1000);
    await tester.pump(const Duration(seconds: 3));
    expect(find.text('Continue'), findsOneWidget);
  }, skip: true);
}
