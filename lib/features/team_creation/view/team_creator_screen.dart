import 'package:basketball_manager/core/app_constants.dart';
import 'package:basketball_manager/features/team_creation/cubit/team_creation_cubit.dart';
import 'package:basketball_manager/features/team_creation/data/team_repository.dart';
import 'package:basketball_manager/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:go_router/go_router.dart';

class TeamCreatorScreen extends StatefulWidget {
  const TeamCreatorScreen({super.key});

  @override
  State<TeamCreatorScreen> createState() => _TeamCreatorScreenState();
}

class _TeamCreatorScreenState extends State<TeamCreatorScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _cityCtrl = TextEditingController();

  Color _primary = Colors.blue;
  Color _secondary = Colors.white;
  String? _logoPath;

  @override
  void dispose() {
    _nameCtrl.dispose();
    _cityCtrl.dispose();
    super.dispose();
  }

  Future<void> _pickColor(bool isPrimary) async {
    Color temp = isPrimary ? _primary : _secondary;
    final color = await showDialog<Color>(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: temp,
              onColorChanged: (c) => temp = c,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(temp),
              child: const Text('Select'),
            ),
          ],
        );
      },
    );
    if (color != null) {
      setState(() {
        if (isPrimary) {
          _primary = color;
        } else {
          _secondary = color;
        }
      });
    }
  }

  bool get _formValid {
    return (_formKey.currentState?.validate() ?? false) && _logoPath != null;
  }

  void _submit() {
    if (!_formValid) return;
    context.read<TeamCreationCubit>().createTeam(
          name: _nameCtrl.text.trim(),
          city: _cityCtrl.text.trim(),
          primaryColor:
              _primary.value.toRadixString(16).padLeft(8, '0'),
          secondaryColor:
              _secondary.value.toRadixString(16).padLeft(8, '0'),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TeamCreationCubit(locator<TeamRepository>()),
      child: BlocListener<TeamCreationCubit, TeamCreationState>(
        listener: (context, state) {
          if (state is TeamCreated) {
            context.go('/pre-season');
          } else if (state is TeamCreationError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => context.pop(),
            ),
            title: const Text('Create Team'),
          ),
          body: SingleChildScrollView(
            padding: AppPaddings.screen,
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: _nameCtrl,
                    decoration: const InputDecoration(labelText: 'Team Name'),
                    maxLength: 20,
                    validator: (v) =>
                        (v == null || v.trim().isEmpty) ? 'Required' : null,
                  ),
                  TextFormField(
                    controller: _cityCtrl,
                    decoration: const InputDecoration(labelText: 'City'),
                    maxLength: 20,
                    validator: (v) =>
                        (v == null || v.trim().isEmpty) ? 'Required' : null,
                  ),
                  const SizedBox(height: AppPaddings.gap),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () => _pickColor(true),
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: _primary,
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(color: AppColors.border),
                            ),
                            alignment: Alignment.center,
                            child: const Text('Primary',
                                style: AppTextStyles.body),
                          ),
                        ),
                      ),
                      const SizedBox(width: AppPaddings.gap),
                      Expanded(
                        child: GestureDetector(
                          onTap: () => _pickColor(false),
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: _secondary,
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(color: AppColors.border),
                            ),
                            alignment: Alignment.center,
                            child: const Text('Secondary',
                                style: AppTextStyles.body),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppPaddings.gapLarge),
                  SizedBox(
                    height: 80,
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: AppPaddings.gap,
                      ),
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        final path = 'assets/logos/logo_${index + 1}.png';
                        final selected = _logoPath == path;
                        return InkWell(
                          onTap: () => setState(() => _logoPath = path),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: selected
                                      ? AppColors.primaryText
                                      : Colors.transparent,
                                  width: 2),
                            ),
                            child: Image.asset(path),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: AppPaddings.gapLarge),
                  _TeamPreview(
                    name: _nameCtrl.text,
                    city: _cityCtrl.text,
                    logoPath: _logoPath,
                    primary: _primary,
                    secondary: _secondary,
                  ),
                  const SizedBox(height: AppPaddings.gapLarge),
                  BlocBuilder<TeamCreationCubit, TeamCreationState>(
                    builder: (context, state) {
                      final loading = state is TeamCreationLoading;
                      return FilledButton(
                        onPressed: loading || !_formValid ? null : _submit,
                        child: const Text('Start Season'),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _TeamPreview extends StatelessWidget {
  const _TeamPreview({
    required this.name,
    required this.city,
    required this.logoPath,
    required this.primary,
    required this.secondary,
  });

  final String name;
  final String city;
  final String? logoPath;
  final Color primary;
  final Color secondary;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: primary,
      child: SizedBox(
        height: 100,
        child: Row(
          children: [
            if (logoPath != null)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(logoPath!),
              ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                '$city $name',
                style: AppTextStyles.h3.copyWith(color: secondary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
