import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/features/on_boarding/data/data_sources/static/static.dart';
import 'package:flutter/material.dart';
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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset(
          frameRate: FrameRate.max,
          onBoardingList[index].image!,
          fit: BoxFit.contain,
          height: 250,
        ),
        Text(
          onBoardingList[index].title!,
          style: AppFonts.bold18.copyWith(
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          onBoardingList[index].body!,
          textAlign: TextAlign.center,
          style: AppFonts.regular16.copyWith(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
