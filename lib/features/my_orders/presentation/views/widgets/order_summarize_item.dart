import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomOrderSummarizeItem extends StatelessWidget {
  const CustomOrderSummarizeItem({
    super.key,
    required this.text1,
    required this.text2,
    required this.text2Color,
  });
  final String text1;
  final String text2;
  final Color text2Color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: AppFonts.regular14.copyWith(color: Colors.black),
        ),
        Text(
          text2,
          style: AppFonts.regular14.copyWith(
            color: text2Color,
          ),
        ),
      ],
    );
  }
}
