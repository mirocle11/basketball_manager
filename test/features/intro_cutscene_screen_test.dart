import 'package:basketball_manager/features/intro/intro_cutscene_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Skip reveals Choose Your Franchise button', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: IntroCutSceneScreen()));
    await tester.tap(find.text('Skip'));
    await tester.pump();
    expect(find.text('Choose Your Franchise'), findsOneWidget);
  });
}
