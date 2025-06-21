import 'package:basketball_manager/features/finances/view/finances_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FinancesScreen renders', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: FinancesScreen()));
    expect(find.text('Finances Screen (stub)'), findsOneWidget);
    expect(find.byType(BottomNavigationBar), findsOneWidget);
  });
}
