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
  final ValueNotifier<double> _progress = ValueNotifier(0);

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _progress.dispose();
    super.dispose();
  }

  Future<void> _init() async {
    await HiveDatabase.init();
    _progress.value = 0.5;
    await RemoteLeagueApiService().seedIfEmpty();
    _progress.value = 1.0;
    if (mounted) context.go(Routes.intro);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      body: SafeArea(
        child: Stack(
          children: [
            const _Logo(),
            Positioned(
              left: 0,
              right: 0,
              bottom: AppPaddings.gapLarge,
              child: ValueListenableBuilder<double>(
                valueListenable: _progress,
                builder: (_, value, __) =>
                    LinearProgressIndicator(value: value),
              ),
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
        child: Image.asset(
          'assets/images/logo.png',
          height: 120,
          errorBuilder: (_, __, ___) => const SizedBox(height: 120),
        )
            .animate()
            .fadeIn(duration: 400.ms)
            .scale(begin: const Offset(0.8, 0.8), end: const Offset(1, 1)),
      ),
    );
  }
}
