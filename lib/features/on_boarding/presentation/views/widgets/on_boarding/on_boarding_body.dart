import 'package:comatecs/core/shared/widgets/custom_button.dart';
import 'package:comatecs/core/utils/app_colors.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Get.put(OnBoardingControllerImpl());
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        // const Expanded(
        //   flex: 2,
        //   // child: OnBoardingItemPageView(),
        // ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              // const OnBoardingDots(),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    CustomButton(
                      onPressed: () {
                        // controller.next(context);
                      },
                      color: AppColors.primaryColor,
                      buttonName: "متابعة",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      textColor: AppColors.primaryColor,
                      onPressed: () {
                        context.go(AppRoutes.loginView);
                        // controller.skip(context);
                      },
                      color: Colors.grey[300],
                      buttonName: "تخطي",
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
