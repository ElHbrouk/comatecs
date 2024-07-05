import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    super.key,
    this.onChanged,
  });
  final void Function(bool?)? onChanged;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool? check = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "تذكرني",
          style: AppFonts.regular14.copyWith(
            color: Colors.black,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Checkbox(  
          value: check,
          onChanged: (value) {
            setState(
              () {
                check = value;
              },
            );
          },
        ),
      ],
    );
  }
}
