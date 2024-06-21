import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, this.suffixIcon, this.prefixIcon, this.hintText});
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      enableInteractiveSelection: false,
      controller: TextEditingController(),
      keyboardType: TextInputType.multiline,
      maxLines: 1,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintStyle: AppFonts.regular12,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
