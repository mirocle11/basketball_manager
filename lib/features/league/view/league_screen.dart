import 'package:basketball_manager/features/league/data/league_repository.dart';
import 'package:basketball_manager/domain/entities/team.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LeagueScreen extends StatelessWidget {
  const LeagueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Team> teams = const LeagueRepository().fetchTeams();

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
        separatorBuilder: (_, __) => Divider(color: Colors.grey.shade800, height: 1),
        itemBuilder: (_, index) {
          final team = teams[index];
          return ExpansionTile(
            title: Text(team.name, style: const TextStyle(color: Colors.white)),
            subtitle: Text(team.city, style: TextStyle(color: Colors.grey.shade400)),
            children: team.roster
                .map(
                  (p) => ListTile(
                title: Text(p.name, style: const TextStyle(color: Colors.white)),
                subtitle: Text(p.position.name, style: TextStyle(color: Colors.grey.shade400)),
                trailing: Text('${p.rating}', style: const TextStyle(color: Colors.white)),
              ),
            )
                .toList(),
          );
        },
      ),
    );
  }
}