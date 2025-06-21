import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:basketball_manager/core/app_constants.dart';
import 'package:basketball_manager/routes/routes.dart';

/// Scaffold used across the app that keeps the bottom navigation bar visible.
class NavScaffold extends StatelessWidget {
  final int currentIndex;
  final Widget body;
  final PreferredSizeWidget? appBar;

  const NavScaffold({
    super.key,
    required this.currentIndex,
    required this.body,
    this.appBar,
  });

  void _onTap(int idx, BuildContext context) {
    switch (idx) {
      case 0:
        context.go(Routes.home);
        break;
      case 1:
        context.go(Routes.team);
        break;
      case 2:
        context.go(Routes.standings);
        break;
      case 3:
        context.go(Routes.finances);
        break;
      case 4:
        context.go(Routes.settings);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: AppColors.scaffoldBackground,
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Team'),
          BottomNavigationBarItem(
              icon: Icon(Icons.emoji_events), label: 'Standings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money), label: 'Finances'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
        onTap: (idx) => _onTap(idx, context),
      ),
    );
  }
}
