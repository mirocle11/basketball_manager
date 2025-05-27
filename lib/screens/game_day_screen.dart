import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MatchSimScreen extends StatelessWidget {
  const MatchSimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Match Simulation'),
        leading: BackButton(onPressed: () => context.go('/')),
      ),
      body: const Center(
        child: Text('Match Simulation Screen'),
      ),
    );
  }
} 