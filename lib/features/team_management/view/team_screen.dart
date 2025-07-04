import 'package:basketball_manager/domain/entities/basic_player.dart';
import 'package:basketball_manager/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:basketball_manager/core/app_constants.dart';

import 'package:basketball_manager/features/team_management/data/team_repository.dart';
import 'package:basketball_manager/locator.dart';
import 'package:basketball_manager/widgets/nav_scaffold.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BasicPlayer> roster = locator<PlayerRepository>().fetchRoster();

    return DefaultTabController(
      length: 4,
      child: NavScaffold(
        currentIndex: 1,
        appBar: AppBar(
          backgroundColor: AppColors.scaffoldBackground,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => context.go(Routes.home),
          ),
          title: const Text('Team Management', style: AppTextStyles.h3),
          centerTitle: true,
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: AppColors.primaryText,
            indicatorWeight: 3,
            labelPadding:
                EdgeInsets.symmetric(horizontal: AppPaddings.gapLarge),
            tabs: [
              Tab(text: 'Roster'),
              Tab(text: 'Tactics'),
              Tab(text: 'Training'),
              Tab(text: 'Contracts'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _RosterTab(roster: roster),
            const _PlaceholderTab(label: 'Tactics'),
            const _PlaceholderTab(label: 'Training'),
            const _PlaceholderTab(label: 'Contracts'),
          ],
        ),
      ),
    );
  }
}

class _RosterTab extends StatelessWidget {
  const _RosterTab({required this.roster});
  final List<BasicPlayer> roster;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: roster.length,
      separatorBuilder: (_, __) =>
          const Divider(color: AppColors.border, height: 1),
      itemBuilder: (_, i) {
        final p = roster[i];
        return ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          title: Text(p.name,
              style: AppTextStyles.body.copyWith(fontWeight: FontWeight.w500)),
          subtitle: Text(p.position.name,
              style: AppTextStyles.bodySecondary.copyWith(fontSize: 13)),
          trailing: Text('${p.rating}',
              style: AppTextStyles.body.copyWith(fontWeight: FontWeight.w600)),
          onTap: () {
            // context.push('/player/${p.id}');
          },
        );
      },
    );
  }
}

class _PlaceholderTab extends StatelessWidget {
  const _PlaceholderTab({required this.label});
  final String label;

  @override
  Widget build(BuildContext context) => Center(
        child: Text('$label (coming soon)', style: AppTextStyles.bodySecondary),
      );
}
