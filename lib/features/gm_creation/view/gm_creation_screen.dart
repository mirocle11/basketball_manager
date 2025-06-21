import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../locator.dart';
import '../cubit/gm_creation_cubit.dart';
import '../data/gm_profile_repository.dart';
import '../widgets/avatar_picker.dart';

class GmCreationScreen extends StatefulWidget {
  const GmCreationScreen({super.key});

  @override
  State<GmCreationScreen> createState() => _GmCreationScreenState();
}

class _GmCreationScreenState extends State<GmCreationScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();

  @override
  void dispose() {
    _nameCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GmCreationCubit(locator<GmProfileRepository>()),
      child: BlocListener<GmCreationCubit, GmCreationState>(
        listener: (context, state) {
          if (state is GmCreationSuccess) {
            context.go('/dashboard');
          }
        },
        child: BlocBuilder<GmCreationCubit, GmCreationState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(title: const Text('Create Your GM')),
              body: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _nameCtrl,
                        decoration: const InputDecoration(labelText: 'GM Name'),
                        onChanged: context.read<GmCreationCubit>().setName,
                        validator: (v) {
                          if (v == null || v.trim().isEmpty) {
                            return 'Required';
                          }
                          if (v.trim().length > 20) {
                            return 'Max 20 characters';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      AvatarPicker(
                        selected: state.avatarPath,
                        onSelect: context.read<GmCreationCubit>().selectAvatar,
                      ),
                      SwitchListTile(
                        title: const Text('Tutorial'),
                        value: state.tutorialOn,
                        onChanged:
                            context.read<GmCreationCubit>().toggleTutorial,
                      ),
                      const Spacer(),
                      FilledButton(
                        onPressed: state.isValid
                            ? () {
                                if (_formKey.currentState!.validate()) {
                                  context.read<GmCreationCubit>().submit();
                                }
                              }
                            : null,
                        child: const Text('Start Career'),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
