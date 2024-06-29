import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.suffixIcon,
      this.prefixIcon,
      this.hintText,
      this.maxLines, this.keyboardType});
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final int? maxLines;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      selectionControls: MaterialTextSelectionControls(),
      textCapitalization: TextCapitalization.sentences,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      enableInteractiveSelection: false,
      controller: TextEditingController(),
      keyboardType: keyboardType ?? TextInputType.multiline,
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintStyle: AppFonts.regular12.copyWith(
          color: Colors.grey,
        ),
        hintText: hintText,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              5.0,
            ),
          ),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(
            5.0,
          ),
        ),
      ),
    );
  }
}
