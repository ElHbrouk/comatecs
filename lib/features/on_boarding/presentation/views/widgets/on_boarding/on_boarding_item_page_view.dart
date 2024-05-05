import 'package:comatecs/controllers/on_boarding/on_boarding_controller.dart';
import 'package:comatecs/features/on_boarding/data/data_sources/static/static.dart';
import 'package:comatecs/features/on_boarding/presentation/views/widgets/on_boarding/on_boarding_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingItemPageView extends GetView<OnBoardingControllerImpl> {
  const OnBoardingItemPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      allowImplicitScrolling: true,
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) => OnBoardingItem(
        index: index,
      ),
    );
  }
}
