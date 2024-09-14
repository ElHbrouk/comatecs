import 'package:comatecs/core/utils/widgets/custom_back_button.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomTitleWithBackButton extends StatelessWidget {
  const CustomTitleWithBackButton({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CustomBackButton(),
        Text(
          title,
          style: AppFonts.bold16.copyWith(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
