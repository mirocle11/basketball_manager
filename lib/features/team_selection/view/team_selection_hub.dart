import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../cubit/team_selection_cubit.dart';
import '../widgets/team_card.dart';

class TeamSelectionHub extends StatelessWidget {
  const TeamSelectionHub({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TeamSelectionCubit(),
      child: BlocListener<TeamSelectionCubit, TeamSelectionState>(
        listener: (context, state) {
          if (state is TeamChosen) {
            context.go('/gm-create');
          }
        },
        child: BlocBuilder<TeamSelectionCubit, TeamSelectionState>(
          builder: (context, state) {
            final width = MediaQuery.of(context).size.width;
            return Scaffold(
              appBar: AppBar(
                title: const Text('Choose Your Franchise'),
              ),
              body: Stack(
                children: [
                  GridView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: state.teams.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: width > 600 ? 3 : 2,
                      childAspectRatio: 0.75,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                    ),
                    itemBuilder: (_, i) {
                      final team = state.teams[i];
                      return TeamCard(
                        team: team,
                        selected: team.id == state.selectedId,
                        onTap: () =>
                            context.read<TeamSelectionCubit>().select(team.id),
                      );
                    },
                  ),
                  Positioned(
                    left: 16,
                    right: 16,
                    bottom: 16,
                    child: FilledButton(
                      onPressed: state.selectedId == null
                          ? null
                          : () => context.read<TeamSelectionCubit>().confirm(),
                      child: const Text('Confirm'),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
