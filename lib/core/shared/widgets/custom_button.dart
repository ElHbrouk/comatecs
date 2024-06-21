import 'package:comatecs/core/utils/app_colors.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    required this.buttonName,
    this.color = AppColors.primaryColor,
    this.textColor = Colors.white,
    this.height,
  });
  final String buttonName;
  final Color? color;
  final double? height;
  final Color? textColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 48,
      width: double.infinity ,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          buttonName,
          style: AppFonts.bold16.copyWith(
                color: textColor,
              ),
        ),
      ),
    );
  }
}
