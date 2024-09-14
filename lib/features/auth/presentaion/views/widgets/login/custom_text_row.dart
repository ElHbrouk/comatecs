import 'package:comatecs/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextRow extends StatelessWidget {
  const CustomTextRow({
    super.key,
    required this.text1,
    required this.text2,
    this.onPressed,
  });
  final String text1;
  final String text2;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text1),
        TextButton(
          onPressed: onPressed,
          child: Text(
            text2,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: AppColors.primaryColor,
                ),
          ),
        ),
      ],
    );
  }
}
