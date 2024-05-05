import 'package:comatecs/core/constant/image_asset.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 72.0),
        child: Center(
          child: Image.asset(ImageAssets.appSplash,
          height: 56,
          
          ),
        ),
      ),
    );
  }
}
