import 'package:flutter/material.dart';
import 'package:basketball_manager/core/app_constants.dart';

class TeamCreatorScreen extends StatelessWidget {
  const TeamCreatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      body: Center(
        child: Text('Team Creator Screen (todo)', style: AppTextStyles.body),
      ),
    );
  }
}
