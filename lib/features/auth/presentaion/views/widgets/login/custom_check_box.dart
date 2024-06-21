import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({super.key, required this.check, this.onChanged});
  final bool check;
  final void Function(bool?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('9'),
        const SizedBox(
          width: 5,
        ),
        Checkbox(
          value: check,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
