import 'package:basketball_manager/features/standings/data/standings_repository.dart';
import 'package:basketball_manager/domain/entities/team_standing.dart';
import 'package:basketball_manager/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:basketball_manager/core/app_constants.dart';

class StandingsScreen extends StatelessWidget {
  const StandingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TeamStanding> standings = const StandingsRepository().fetchStandings();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go(Routes.home),
        ),
        title: const Text('Standings'),
      ),
      body: ListView.separated(
        itemCount: standings.length,
        separatorBuilder: (_, __) => Divider(color: AppColors.border, height: 1),
        itemBuilder: (context, index) {
          final team = standings[index];
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            leading: Text(
              '${index + 1}',
              style: AppTextStyles.body.copyWith(fontWeight: FontWeight.w600),
            ),
            title: Text(
              team.name,
              style: AppTextStyles.body,
            ),
            trailing: Text(
              '${team.wins}-${team.losses}',
              style: AppTextStyles.bodySecondary,
            ),
          );
        },
      ),
    );
  }
}