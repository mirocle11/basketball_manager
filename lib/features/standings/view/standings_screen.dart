import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StandingsScreen extends StatelessWidget {
  const StandingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
        title: const Text('Standings'),
      ),
      body: const Center(
        child: Text('Standings Screen - Coming Soon'),
      ),
    );
  }
} 