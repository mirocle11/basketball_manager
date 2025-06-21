import 'package:flutter/material.dart';

class AvatarPicker extends StatelessWidget {
  final String? selected;
  final ValueChanged<String> onSelect;
  const AvatarPicker({super.key, this.selected, required this.onSelect});

  static const _avatars = [
    'assets/avatars/gm1.png',
    'assets/avatars/gm2.png',
    'assets/avatars/gm3.png',
    'assets/avatars/gm4.png',
    'assets/avatars/gm5.png',
    'assets/avatars/gm6.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _avatars.length,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (_, i) {
          final path = _avatars[i];
          final isSelected = path == selected;
          return GestureDetector(
            onTap: () => onSelect(path),
            child: CircleAvatar(
              radius: 32,
              backgroundColor:
                  isSelected ? Theme.of(context).colorScheme.primary : null,
              child: CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage(path),
              ),
            ),
          );
        },
      ),
    );
  }
}
