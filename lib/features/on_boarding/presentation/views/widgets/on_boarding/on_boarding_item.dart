import 'package:comatecs/features/on_boarding/data/data_sources/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset(
          
          frameRate: FrameRate.max,
          onBoardingList[index].image!,
          fit: BoxFit.contain,
          height: Get.width/1.5,
          
        ),
        Text(
          onBoardingList[index].title!,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          onBoardingList[index].body!,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
