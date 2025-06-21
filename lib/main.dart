import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:basketball_manager/core/app_theme.dart';
import 'package:basketball_manager/locator.dart';
import 'dart:async';

import 'routes/app_router.dart';

Future<void> main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    setupLocator();
    runApp(BasketballManagerApp());
  }, (error, stack) {
    debugPrint('Initialization failed: $error');
    debugPrintStack(stackTrace: stack);
  });
}

class BasketballManagerApp extends StatelessWidget {
  BasketballManagerApp({super.key});

  final GoRouter _router = buildRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Basketball GM',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      routerConfig: _router,
    );
  }
}
