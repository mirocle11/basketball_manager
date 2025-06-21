part of 'gm_creation_cubit.dart';

class GmCreationState {
  final String name;
  final String? avatarPath;
  final bool tutorialOn;
  final bool isValid;

  const GmCreationState({
    this.name = '',
    this.avatarPath,
    this.tutorialOn = true,
    this.isValid = false,
  });

  GmCreationState copyWith({
    String? name,
    String? avatarPath,
    bool? tutorialOn,
    bool? isValid,
  }) {
    return GmCreationState(
      name: name ?? this.name,
      avatarPath: avatarPath ?? this.avatarPath,
      tutorialOn: tutorialOn ?? this.tutorialOn,
      isValid: isValid ?? this.isValid,
    );
  }
}

class GmCreationSuccess extends GmCreationState {
  const GmCreationSuccess();
}
