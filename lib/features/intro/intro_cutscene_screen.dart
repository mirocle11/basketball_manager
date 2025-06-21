import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/app_constants.dart';

class IntroCutSceneScreen extends StatefulWidget {
  const IntroCutSceneScreen({super.key});

  @override
  State<IntroCutSceneScreen> createState() => _IntroCutSceneScreenState();
}

class _IntroCutSceneScreenState extends State<IntroCutSceneScreen>
    with SingleTickerProviderStateMixin {
  final List<String> _paragraphs = const [
    'Welcome, future front-office mastermind! Your journey begins now.',
    'I’m Darius ‘DJ’ Whitaker, commissioner of the league you’re about to shake up.',
    'Ten proud franchises—five in the East, five in the West—are stuck in neutral and need fresh leadership.',
    'Review their dossiers, choose your challenge that excites you, and take the reigns.'
    'Each team has its own strengths and weaknesses, so choose wisely.',
    'Good luck… the Whitaker Cup is waiting.'
  ];
  bool _showButton = false;

  void _skip() {
    setState(() {
      _showButton = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final disableAnims = MediaQuery.of(context).disableAnimations;
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: 'logo',
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 120,
                    errorBuilder: (_, __, ___) => const SizedBox(height: 120),
                  ),
                ),
                const SizedBox(height: AppPaddings.gapLarge),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: disableAnims || _showButton
                      ? Column(
                          children: _paragraphs
                              .map((p) => Padding(
                                    padding: const EdgeInsets.only(bottom: 24),
                                    child: Text(p,
                                        textAlign: TextAlign.center,
                                        style: AppTextStyles.body),
                                  ))
                              .toList(),
                        )
                      : AnimatedTextKit(
                          animatedTexts: _paragraphs
                              .map((p) => TyperAnimatedText(
                                    p,
                                    textAlign: TextAlign.center,
                                    textStyle: AppTextStyles.body,
                                    speed: const Duration(milliseconds: 40),
                                  ))
                              .toList(),
                          isRepeatingAnimation: false,
                          displayFullTextOnTap: true,
                          onFinished: () => setState(() => _showButton = true),
                        ),
                ),
              ],
            ),
            Positioned(
              top: 8,
              right: 8,
              child: TextButton(
                onPressed: _skip,
                child: const Text('Skip'),
              ),
            ),
            if (_showButton || disableAnims)
              Positioned(
                bottom: 32,
                left: 0,
                right: 0,
                child: _PulsingButton(
                  label: 'Choose Your Franchise',
                  onTap: () => context.go('/team-select'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _PulsingButton extends StatefulWidget {
  final String label;
  final VoidCallback onTap;
  const _PulsingButton({required this.label, required this.onTap});

  @override
  State<_PulsingButton> createState() => _PulsingButtonState();
}

class _PulsingButtonState extends State<_PulsingButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: Tween(begin: 1.0, end: 1.1).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
      ),
      child: FilledButton(
        onPressed: widget.onTap,
        child: Text(widget.label),
      ),
    );
  }
}
