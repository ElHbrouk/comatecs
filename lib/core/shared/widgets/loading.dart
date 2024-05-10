import 'package:comatecs/core/constant/image_asset.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        height: 400,
        width: 400,
        frameRate: FrameRate.max,
        repeat: true,
        ImageAssets.loading,
      ),
    );
  }
}
