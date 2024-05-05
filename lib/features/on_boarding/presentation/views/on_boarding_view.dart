import 'package:comatecs/features/on_boarding/presentation/views/widgets/on_boarding/on_boarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: OnBoardingBody(),
      ),
    );
  }
}
