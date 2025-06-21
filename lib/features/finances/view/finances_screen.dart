import 'package:flutter/material.dart';
import 'package:basketball_manager/core/app_constants.dart';
import 'package:basketball_manager/widgets/nav_scaffold.dart';

class FinancesScreen extends StatelessWidget {
  const FinancesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return NavScaffold(
      currentIndex: 3,
      appBar: AppBar(title: const Text('Finances')),
      body: const Center(
        child: Text('Finances Screen (stub)', style: AppTextStyles.body),
      ),
    );
  }
}
