import 'package:comatecs/constants.dart';
import 'package:comatecs/core/services/shared_prefrences_singleton.dart';
import 'package:comatecs/core/utils/widgets/custom_button.dart';
import 'package:comatecs/core/utils/app_colors.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/on_boarding/data/data_source/static/static.dart';
import 'package:comatecs/features/on_boarding/presentation/views/widgets/on_boarding/on_boarding_dots.dart';
import 'package:comatecs/features/on_boarding/presentation/views/widgets/on_boarding/on_boarding_item_page_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({
    super.key,
  });

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Expanded(
          flex: 2,
          child: OnBoardingItemPageView(
            pageController: pageController,
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              OnBoardingDots(
                controller: pageController,
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    CustomButton(
                      onPressed: () {
                        if (OnBoardingItemPageView.currentPage ==
                            onBoardingList.length - 1) {
                          SharedPreferencesSingleton.setBool(
                              key: kIsOnBoardingSeen, value: true);
                          context.go(AppRoutes.loginView);
                        } else {
                          pageController.nextPage(
                            duration: const Duration(
                              milliseconds: 300,
                            ),
                            curve: Curves.easeIn,
                          );
                        }
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
                        SharedPreferencesSingleton.setBool(
                          key: kIsOnBoardingSeen,
                          value: true,
                        );
                        context.go(AppRoutes.loginView);
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
