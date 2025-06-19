import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:basketball_manager/routes/routes.dart';
import 'package:basketball_manager/core/app_constants.dart';

class IntroStoryScreen extends StatefulWidget {
  const IntroStoryScreen({super.key});

  @override
  State<IntroStoryScreen> createState() => _IntroStoryScreenState();
}

class _IntroStoryScreenState extends State<IntroStoryScreen> {
  final PageController _pageController = PageController();
  int _page = 0;

  final List<String> _paragraphs = const [
    'You are the new GM hired to rebuild this franchise.',
    'Board ultimatum: reach playoffs in 3 years.',
    'Draft wisely. Manage egos. Win games.'
  ];

  @override
  Widget build(BuildContext context) {
    final isLast = _page == _paragraphs.length - 1;
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: _paragraphs.length,
              onPageChanged: (i) => setState(() => _page = i),
              itemBuilder: (context, index) => Center(
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: DefaultTextStyle(
                    style: AppTextStyles.body,
                    child: TyperAnimatedTextKit(
                      text: [_paragraphs[index]],
                      speed: const Duration(milliseconds: 40),
                      isRepeatingAnimation: false,
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: IconButton(
                icon: const Icon(Icons.fast_forward,
                    color: AppColors.primaryText),
                onPressed: () {
                  _pageController.animateToPage(
                    _paragraphs.length - 1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
            if (isLast)
              Positioned(
                bottom: 32,
                left: 0,
                right: 0,
                child: _PulsingButton(
                  label: 'Continue',
                  onTap: () => context.go(Routes.teamCreator),
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
