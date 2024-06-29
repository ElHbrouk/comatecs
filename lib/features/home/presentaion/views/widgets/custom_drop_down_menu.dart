import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDropDownMenu extends StatelessWidget {
  const CustomDropDownMenu({
    super.key,
    required this.label,
    required this.dropdownMenuEntries,
    required this.text,
  });
  final String label;
  final List<DropdownMenuEntry<String>> dropdownMenuEntries;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: AppFonts.regular14.copyWith(
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          DropdownMenu(
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
              style: AppFonts.regular12.copyWith(
                color: Colors.black,
              ),
            ),
            enableFilter: true,
            width: MediaQuery.sizeOf(context).width * 0.9,
            dropdownMenuEntries: dropdownMenuEntries,
          ),
        ],
      ),
    );
  }
}
