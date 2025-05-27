import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SeasonScreen extends StatelessWidget {
  const SeasonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Season Progress'),
        leading: BackButton(onPressed: () => context.go('/')),
      ),
      body: const Center(
        child: Text('Season Progress Screen'),
      ),
    );
  }
} 