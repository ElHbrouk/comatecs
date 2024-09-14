import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.suffixIcon,
    this.prefixIcon,
    this.hintText,
    this.maxLines,
    this.keyboardType,
    this.onFieldSubmitted,
    this.controller,
  });
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final int? maxLines;
  final TextInputType? keyboardType;
  final void Function(String)? onFieldSubmitted;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      selectionControls: MaterialTextSelectionControls(),
      textCapitalization: TextCapitalization.sentences,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      enableInteractiveSelection: true,
      controller: controller,
      textInputAction: TextInputAction.search,
      onFieldSubmitted: onFieldSubmitted,
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
