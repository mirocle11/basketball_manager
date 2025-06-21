import 'package:flutter/material.dart';
import 'package:basketball_manager/core/app_constants.dart';
import 'package:basketball_manager/widgets/nav_scaffold.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return NavScaffold(
      currentIndex: 4,
      appBar: AppBar(title: const Text('Settings')),
      body: const Center(
        child: Text('Settings Screen (stub)', style: AppTextStyles.body),
      ),
    );
  }
}
