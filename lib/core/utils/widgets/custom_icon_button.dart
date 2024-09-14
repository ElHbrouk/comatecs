import 'package:comatecs/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {super.key, required this.icon, this.onPressed, required this.color});
  final IconData icon;
  final void Function()? onPressed;
  final bool color;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor: color == true
            ? AppColors.primaryColor.withOpacity(0.4)
            : Colors.grey.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
      ),
      iconSize: 18,
      onPressed: onPressed,
      icon: Icon(
        icon,
      ),
    );
  }
}
