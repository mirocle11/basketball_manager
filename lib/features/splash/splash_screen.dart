import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:basketball_manager/data/local/hive_database.dart';
import 'package:basketball_manager/data/remote/remote_league_api_service.dart';
import 'package:basketball_manager/routes/routes.dart';
import 'package:basketball_manager/core/app_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    await HiveDatabase.init();
    await RemoteLeagueApiService().seed();
    if (mounted) context.go(Routes.intro);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      body: SafeArea(
        child: Stack(
          children: [
            _Logo(),
            Positioned(
              left: 0,
              right: 0,
              bottom: AppPaddings.gapLarge,
              child: LinearProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: 'logo',
        child: const Text('Basketball GM', style: AppTextStyles.h1)
            .animate()
            .fadeIn(duration: 400.ms)
            .scale(begin: const Offset(0.8, 0.8), end: const Offset(1, 1)),
      ),
    );
  }
}
