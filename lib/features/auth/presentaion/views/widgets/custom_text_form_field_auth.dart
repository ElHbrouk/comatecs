import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldAuth extends StatelessWidget {
  const CustomTextFormFieldAuth({
    super.key,
    required this.text,
    this.keyboardType,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.hintText,
    this.controller,
    required this.validator,
  });
  final String text;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppFonts.bold18.copyWith(
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          validator: validator,
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          maxLines: 1,
          style: AppFonts.regular14,
          decoration: InputDecoration(
            contentPadding: const EdgeInsetsDirectional.all(16),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
