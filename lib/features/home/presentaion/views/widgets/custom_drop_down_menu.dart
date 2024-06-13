import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDropDownMenu extends StatelessWidget {
  const CustomDropDownMenu({
    super.key,
    required this.label,
  });
  final String label;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DropdownMenu(
        selectedTrailingIcon: const Icon(
          FontAwesomeIcons.chevronUp,
          size: 16,
        ),
        trailingIcon: const Icon(
          FontAwesomeIcons.chevronDown,
          size: 16,
        ),
        label: Text(
          label,
        ),
        enableFilter: true,
        width: MediaQuery.sizeOf(context).width * 0.9,
        dropdownMenuEntries: const [
          DropdownMenuEntry(value: "hi", label: 'معدات صناعية'),
          DropdownMenuEntry(value: "why", label: 'الأدوات والمعدات'),
          DropdownMenuEntry(value: "bye", label: 'عدد يدوية'),
          DropdownMenuEntry(value: "die", label: 'معدات صناعية'),
        ],
      ),
    );
  }
}
