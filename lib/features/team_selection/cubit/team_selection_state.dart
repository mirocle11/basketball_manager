part of 'team_selection_cubit.dart';

class Team {
  final String id;
  final String name;
  final String logoPath;
  final int difficulty;
  final List<String> pros;
  final List<String> cons;
  const Team({
    required this.id,
    required this.name,
    required this.logoPath,
    required this.difficulty,
    required this.pros,
    required this.cons,
  });
}

class TeamSelectionState {
  final List<Team> teams;
  final String? selectedId;
  const TeamSelectionState(this.teams, {this.selectedId});
}

class TeamChosen extends TeamSelectionState {
  const TeamChosen(super.teams, String id) : super(selectedId: id);
}
