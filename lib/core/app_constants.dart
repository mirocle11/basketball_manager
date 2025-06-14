import 'package:flutter/material.dart';

class AppColors {
  static const Color scaffoldBackground = Color(0xFF121212);
  static const Color surface = Color(0xFF1E1E1E);
  static const Color border = Color(0xFF424242);
  static const Color primaryText = Colors.white;
  static const Color secondaryText = Color(0xFFB0B0B0);
  static const Color disabled = Color(0xFF757575);
}

class AppTextStyles {
  static const TextStyle h1 = TextStyle(
    color: AppColors.primaryText,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle h2 = TextStyle(
    color: AppColors.primaryText,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle hRecord = TextStyle(
    color: AppColors.primaryText,
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle h3 = TextStyle(
    color: AppColors.primaryText,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle body = TextStyle(
    color: AppColors.primaryText,
    fontSize: 16,
  );
  static const TextStyle bodySecondary = TextStyle(
    color: AppColors.secondaryText,
    fontSize: 14,
  );
}

class AppPaddings {
  static const double gapSmall = 4;
  static const double gap = 12;
  static const double gapLarge = 24;

  static const EdgeInsets screen = EdgeInsets.symmetric(horizontal: 16, vertical: 12);
  static const EdgeInsets horizontal = EdgeInsets.symmetric(horizontal: 16);
  static const EdgeInsets vertical = EdgeInsets.symmetric(vertical: 12);
}

class AppRadii {
  static const BorderRadius card = BorderRadius.all(Radius.circular(8));
}
