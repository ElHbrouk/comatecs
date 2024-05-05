import 'package:comatecs/core/constant/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    required this.buttonName,
    this.color = AppColors.primaryColor,
    this.textColor = Colors.white,
  });
  final String buttonName;
  final Color? color;
  final Color? textColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: MaterialButton(
       
        onPressed: onPressed,
        child: Text(
          buttonName,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
