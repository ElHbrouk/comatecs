import 'package:comatecs/core/utils/app_colors.dart';
import 'package:comatecs/features/on_boarding/data/data_source/static/static.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDots extends StatelessWidget {
  const OnBoardingDots({
    super.key,
    required this.controller,
  });
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      axisDirection: Axis.horizontal,
      textDirection: TextDirection.rtl,
      controller: controller,
      count: onBoardingList.length,
      effect: const WormEffect(
        activeDotColor: AppColors.primaryColor,
        type: WormType.thin,
      ),
    );
  }
}
