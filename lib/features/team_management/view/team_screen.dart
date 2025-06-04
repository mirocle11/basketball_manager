import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../logic/team_bloc.dart';
import '../data/team_repository.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TeamBloc(
        teamRepository: context.read<TeamRepository>(),
      )..add(LoadTeam()),
      child: const TeamView(),
    );
  }
}

class TeamView extends StatelessWidget {
  const TeamView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
        title: const Text('Team Management'),
      ),
      body: BlocBuilder<TeamBloc, TeamState>(
        builder: (context, state) {
          if (state is TeamLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TeamLoaded) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Team: ${state.team.name}',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: state.team.players.length,
                    itemBuilder: (context, index) {
                      final player = state.team.players[index];
                      return ListTile(
                        leading: CircleAvatar(
                          child: Text(player.position[0]),
                        ),
                        title: Text(player.name),
                        subtitle: Text('Rating: ${player.rating}'),
                        trailing: Text('Age: ${player.age}'),
                        onTap: () {
                          // TODO: Implement player details/edit screen
                        },
                      );
                    },
                  ),
                ),
              ],
            );
          } else if (state is TeamError) {
            return Center(
              child: Text(
                'Error: ${state.message}',
                style: const TextStyle(color: Colors.red),
              ),
            );
          }
          return const Center(
            child: Text('Create or select a team to get started'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implement add player functionality
        },
        child: const Icon(Icons.add),
      ),
    );
  }
} 