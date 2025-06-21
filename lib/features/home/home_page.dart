import 'package:flutter/material.dart';
import 'view/home_screen.dart';

/// Wraps [HomeScreen] to provide Bloc providers if needed.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // If you're using BlocProviders for your team/roster, do it here:
    // return BlocProvider(
    //   create: (_) => TeamBloc(repository: TeamRepository()),
    //   child: const HomeScreen(),
    // );
    return const HomeScreen();
  }
}
