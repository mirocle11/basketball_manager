import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

import '../../../domain/entities/gm_profile.dart';
import '../data/gm_profile_repository.dart';

part 'gm_creation_state.dart';

class GmCreationCubit extends Cubit<GmCreationState> {
  GmCreationCubit(this._repo) : super(const GmCreationState());

  final GmProfileRepository _repo;

  void setName(String name) {
    emit(state.copyWith(
      name: name,
      isValid: _validate(name: name, avatar: state.avatarPath),
    ));
  }

  void selectAvatar(String path) {
    emit(state.copyWith(
      avatarPath: path,
      isValid: _validate(name: state.name, avatar: path),
    ));
  }

  void toggleTutorial(bool value) {
    emit(state.copyWith(tutorialOn: value));
  }

  Future<void> submit() async {
    if (!state.isValid) return;
    final profile = GMProfile(
      id: const Uuid().v4(),
      name: state.name,
      avatarPath: state.avatarPath!,
      tutorialOn: state.tutorialOn,
      createdAt: DateTime.now().toUtc(),
    );
    await _repo.save(profile);
    emit(const GmCreationSuccess());
  }

  bool _validate({required String name, String? avatar}) {
    return name.trim().isNotEmpty && name.trim().length <= 20 && avatar != null;
  }
}
