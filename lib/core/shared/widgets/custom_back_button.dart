import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
    this.color,
  });
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 18,
      style: IconButton.styleFrom(
        maximumSize: const Size(48, 48),
        minimumSize: const Size(24, 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: color ?? Colors.transparent,
      ),
      onPressed: () {
        context.pop();
      },
      icon: const Icon(
        Icons.arrow_back_ios_new,
      ),
    );
  }
}
