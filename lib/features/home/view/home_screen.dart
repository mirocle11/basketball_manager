import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/routes/routes.dart';

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
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Column(
          children: [
            /// ── Top section: Team name + settings icon
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _teamName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Using go_router: go (replace) or push
                      context.push(Routes.settings);
                    },
                    icon: const Icon(Icons.settings, color: Colors.white),
                  ),
                ],
              ),
            ),

            /// ── Season Record Card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade700),
                ),
                child: Column(
                  children: [
                    Text(
                      _seasonRecord,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Season Record',
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            /// ── “Quick Actions” Label
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Quick Actions',
                  style: TextStyle(
                    color: Colors.grey.shade300,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 12),

            /// ── Grid of Action Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
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
                          color: Colors.grey.shade800,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey.shade700),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.article, color: Colors.white),
                            SizedBox(width: 8),
                            Text(
                              'News/Events',
                              style: TextStyle(color: Colors.white, fontSize: 16),
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
        backgroundColor: Colors.grey.shade800,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade500,
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
    super.key,
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
          color: Colors.grey.shade800,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade700),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 8),
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
