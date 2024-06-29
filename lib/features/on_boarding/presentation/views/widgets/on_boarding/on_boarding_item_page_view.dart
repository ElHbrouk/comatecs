import 'package:comatecs/features/on_boarding/data/data_sources/static/static.dart';
import 'package:comatecs/features/on_boarding/presentation/views/widgets/on_boarding/on_boarding_item.dart';
import 'package:flutter/material.dart';

class OnBoardingItemPageView extends StatelessWidget {
  const OnBoardingItemPageView({
    super.key,
    required this.pageController,
  });
  final PageController pageController;
  static int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        onPageChanged: (value) {
          currentPage = value;
        },
        reverse: true,
        controller: pageController,
        allowImplicitScrolling: true,
        itemCount: onBoardingList.length,
        itemBuilder: (context, index) {
          return OnBoardingItem(
            index: index,
          );
        });
  }
}
