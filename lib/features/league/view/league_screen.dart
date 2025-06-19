import 'package:basketball_manager/domain/entities/basic_team.dart';
import 'package:basketball_manager/features/league/data/league_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:basketball_manager/core/app_constants.dart';
import 'package:basketball_manager/locator.dart';

class LeagueScreen extends StatelessWidget {
  const LeagueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BasicTeam> teams = locator<LeagueRepository>().fetchTeams();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: const Text('League'),
      ),
      body: ListView.separated(
        itemCount: teams.length,
        separatorBuilder: (_, __) =>
            const Divider(color: AppColors.border, height: 1),
        itemBuilder: (_, index) {
          final team = teams[index];
          return ExpansionTile(
            title: Text(team.name, style: AppTextStyles.body),
            subtitle: Text(team.city, style: AppTextStyles.bodySecondary),
            children: team.roster
                .map(
                  (p) => ListTile(
                    title: Text(p.name, style: AppTextStyles.body),
                    subtitle: Text(p.position.name,
                        style: AppTextStyles.bodySecondary),
                    trailing: Text('${p.rating}', style: AppTextStyles.body),
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }
}
