import 'package:comatecs/core/utils/app_colors.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

ThemeData englishTheme = ThemeData(
  
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0.0,
  ),
  fontFamily: AppFonts.englishFontFamily,
  
  textTheme: const TextTheme(
    bodyLarge: AppFonts.regular16,
    bodyMedium: AppFonts.regular14,
    bodySmall: AppFonts.regular10,
    displayLarge: AppFonts.bold18,
    displayMedium: AppFonts.bold16,
    displaySmall: AppFonts.regular10,
  
  ),
);
ThemeData arabicTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0.0,
  ),
  fontFamily: AppFonts.arabicFontFamily,
  textTheme: const TextTheme(
    bodyLarge: AppFonts.regular16,
    bodyMedium: AppFonts.regular14,
    bodySmall: AppFonts.regular10,
    displayLarge: AppFonts.bold18,
    displayMedium: AppFonts.bold16,
    displaySmall: AppFonts.regular10,
  ),
);
