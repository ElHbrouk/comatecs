import 'package:comatecs/core/constant/app_colors.dart';
import 'package:comatecs/core/constant/app_styles.dart';
import 'package:flutter/material.dart';

ThemeData englishTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0.0,
  ),
  fontFamily: AppStyles.englishFontFamily,
  textTheme: const TextTheme(
    bodyLarge: AppStyles.regular16,
    bodyMedium: AppStyles.regular14,
    bodySmall: AppStyles.regular10,
    displayLarge: AppStyles.bold18,
    displayMedium: AppStyles.bold16,
  ),
);
ThemeData arabicTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0.0,
  ),
  fontFamily: AppStyles.arabicFontFamily,
  textTheme: const TextTheme(
    bodyLarge: AppStyles.regular16,
    bodyMedium: AppStyles.regular14,
    bodySmall: AppStyles.regular10,
    displayLarge: AppStyles.bold18,
    displayMedium: AppStyles.bold16,
  ),
);
