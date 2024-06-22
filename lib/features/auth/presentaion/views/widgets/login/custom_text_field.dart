import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.suffixIcon,
      this.prefixIcon,
      this.hintText,
      this.maxLines});
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final int? maxLines;
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
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintStyle: AppFonts.regular12.copyWith(color: Colors.grey),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
