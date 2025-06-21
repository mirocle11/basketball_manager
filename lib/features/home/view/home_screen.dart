import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:basketball_manager/routes/routes.dart';
import 'package:basketball_manager/core/app_constants.dart';

/// If you already have a TeamBloc or other providers, wrap HomeScreen
/// with BlocProviders up in main.dart. For now, this is just the UI.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // You can change these getters to read from your TeamBloc state if needed.
  String get _teamName => 'Team Titans';
  String get _seasonRecord => '12-3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      body: SafeArea(
        child: Column(
          children: [
            /// ── Top section: Team name + settings icon
            Padding(
              padding: AppPaddings.screen,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _teamName,
                      style: AppTextStyles.h2,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Using go_router: go (replace) or push
                      context.push(Routes.settings);
                    },
                    icon: const Icon(Icons.settings,
                        color: AppColors.primaryText),
                  ),
                ],
              ),
            ),

            /// ── Season Record Card
            Padding(
              padding: AppPaddings.horizontal,
              child: Container(
                width: double.infinity,
                padding: AppPaddings.vertical,
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: AppRadii.card,
                  border: Border.all(color: AppColors.border),
                ),
                child: Column(
                  children: [
                    Text(
                      _seasonRecord,
                      style: AppTextStyles.hRecord,
                    ),
                    const SizedBox(height: AppPaddings.gapSmall),
                    const Text(
                      'Season Record',
                      style: AppTextStyles.bodySecondary,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: AppPaddings.gapLarge),

            /// ── “Quick Actions” Label
            Padding(
              padding: AppPaddings.horizontal,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Quick Actions',
                  style:
                      AppTextStyles.h3.copyWith(color: AppColors.secondaryText),
                ),
              ),
            ),

            const SizedBox(height: AppPaddings.gap),

            /// ── Grid of Action Buttons
            Padding(
              padding: AppPaddings.horizontal,
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: AppPaddings.gap,
                mainAxisSpacing: AppPaddings.gap,
                childAspectRatio: 3, // wider buttons
                children: [
                  _ActionButton(
                    label: 'Manage Team',
                    icon: Icons.group,
                    onTap: () {
                      // Push the TeamScreen onto the stack
                      context.push(Routes.team);
                    },
                  ),
                  _ActionButton(
                    label: 'Game Day',
                    icon: Icons.calendar_today,
                    onTap: () {
                      // Push the GameScreen onto the stack
                      context.push(Routes.gameDay);
                    },
                  ),
                  _ActionButton(
                    label: 'Standings',
                    icon: Icons.emoji_events,
                    onTap: () {
                      // Push the StandingsScreen onto the stack
                      context.push(Routes.standings);
                    },
                  ),
                  _ActionButton(
                    label: 'League',
                    icon: Icons.public,
                    onTap: () {
                      context.push(Routes.league);
                    },
                  ),
                  _ActionButton(
                    label: 'Finances',
                    icon: Icons.attach_money,
                    onTap: () {
                      // Push the stub or real FinancesScreen
                      context.push(Routes.finances);
                    },
                  ),

                  // For the fifth item, span both columns:
                  GridTile(
                    footer: const SizedBox.shrink(),
                    child: GestureDetector(
                      onTap: () {
                        // Push the News/Events screen
                        context.push(Routes.news);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.accent,
                          borderRadius: AppRadii.card,
                          border: Border.all(color: AppColors.border),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.article, color: AppColors.primaryText),
                            SizedBox(width: AppPaddings.gap),
                            Text(
                              'News/Events',
                              style: AppTextStyles.body,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      /// ── Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.surface,
        selectedItemColor: AppColors.primaryText,
        unselectedItemColor: AppColors.disabled,
        currentIndex: 0, // Home is index 0
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Team',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events),
            label: 'Standings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Finances',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        onTap: (idx) {
          switch (idx) {
            case 0:
              // Already on Home; do nothing or maybe scroll to top
              break;
            case 1:
              context.go(Routes.team);
              break;
            case 2:
              context.go(Routes.standings);
              break;
            case 3:
              context.go(Routes.finances);
              break;
            case 4:
              context.go(Routes.settings);
              break;
          }
        },
      ),
    );
  }
}

/// A single “Quick Action” button used in the grid above.
class _ActionButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  const _ActionButton({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.accent,
          borderRadius: AppRadii.card,
          border: Border.all(color: AppColors.border),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: AppColors.primaryText),
            const SizedBox(width: AppPaddings.gap),
            Text(
              label,
              style: AppTextStyles.body,
            ),
          ],
        ),
      ),
    );
  }
}
