import 'package:comatecs/controllers/on_boarding/on_boarding_controller.dart';
import 'package:comatecs/core/utils/app_colors.dart';
import 'package:comatecs/features/on_boarding/data/data_sources/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingDots extends StatelessWidget {
  const OnBoardingDots({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImpl>(
        init: OnBoardingControllerImpl(),
        builder: (controller) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                onBoardingList.length,
                (index) => AnimatedContainer(
                    margin:
                        const EdgeInsetsDirectional.symmetric(horizontal: 2.5),
                    height: 6,
                    width: controller.currentPage == index ? 20 : 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.primaryColor,
                    ),
                    duration: const Duration(milliseconds: 900)),
              ),
            ],
          );
        });
  }
}
