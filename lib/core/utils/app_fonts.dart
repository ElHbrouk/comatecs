import 'package:comatecs/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppFonts {
  static const arabicFontFamily = 'Tajawal';
  static const englishFontFamily = "PlayfairDisplay";
  static const regular16 = TextStyle(
    color: AppColors.primaryColor,
    height: 2,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: arabicFontFamily,
  );
  static const bold16 = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontFamily: arabicFontFamily,
  );
   static const bold14 = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 14,
    fontWeight: FontWeight.w700,
    fontFamily: arabicFontFamily,
  );
  static const bold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryColor,
    fontFamily: arabicFontFamily,
  );
  static const regular14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryColor,
    fontFamily: arabicFontFamily,
  );
  static const regular12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryColor,
    fontFamily: arabicFontFamily,
  );
  static const regular10 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryColor,
    fontFamily: arabicFontFamily,
  );
  static const semiBold12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryColor,
    fontFamily: arabicFontFamily,
  );
  static const semiBold14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryColor,
    fontFamily: arabicFontFamily,
  );
}
