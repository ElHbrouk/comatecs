import 'package:comatecs/core/constant/image_asset.dart';
import 'package:flutter/material.dart';

class CustomTitleAuth extends StatelessWidget {
  const CustomTitleAuth({
    super.key,
    required this.text1,
    this.text2,
  });
  final String text1;
  final String? text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          ImageAssets.appLogo2,
          height: 66,
        ), 
        const SizedBox(height: 16,),
        Text(
          text1, // login
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          text2 ?? '', // hello again
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
