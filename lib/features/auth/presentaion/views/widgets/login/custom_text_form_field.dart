import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, this.suffixIcon, this.prefixIcon, this.hintText});
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
