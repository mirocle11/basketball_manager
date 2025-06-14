import 'package:basketball_manager/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:basketball_manager/core/app_constants.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go(Routes.home),
        ),
        title: const Text('Game Day'),
      ),
      body: const Center(
        child: Text('Game Day Screen - Coming Soon', style: AppTextStyles.body),
      ),
    );
  }
} 