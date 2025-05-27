import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Team Management'),
        leading: BackButton(onPressed: () => context.go('/')),
      ),
      body: const Center(
        child: Text('Team Management Screen'),
      ),
    );
  }
} 