import 'package:comatecs/controllers/on_boarding/on_boarding_controller.dart';
import 'package:comatecs/core/utils/app_colors.dart';
import 'package:comatecs/core/shared/widgets/custom_button.dart';
import 'package:comatecs/features/on_boarding/presentation/views/widgets/on_boarding/on_boarding_dots.dart';
import 'package:comatecs/features/on_boarding/presentation/views/widgets/on_boarding/on_boarding_item_page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingBody extends GetView<OnBoardingControllerImpl> {
  const OnBoardingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImpl());
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        const Expanded(
          flex: 2,
          child: OnBoardingItemPageView(),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              const OnBoardingDots(),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    CustomButton(
                      onPressed: () {
                        controller.next();
                      },
                      color: AppColors.primaryColor,
                      buttonName: "43".tr,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      textColor: AppColors.primaryColor,
                      onPressed: () {
                        controller.skip();
                      },
                      color: Colors.grey[300],
                      buttonName: "50".tr,
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        )
      ],
    );
  }
}
