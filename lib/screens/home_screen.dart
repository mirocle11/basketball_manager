import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basketball Manager'),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.go('/team'),
              child: const Text('Team Management'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.go('/match'),
              child: const Text('Play Match'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.go('/season'),
              child: const Text('Season Progress'),
            ),
          ],
        ),
      ),
    );
  }
} 