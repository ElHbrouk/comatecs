import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/data/models/menu_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDropDownMenu extends StatelessWidget {
  const CustomDropDownMenu({
    super.key,
    required this.label,
    required this.dropdownMenuEntries,
    required this.text,
    required this.controller,
    this.initialSelection,
  });
  final String label;
  final List<DropdownMenuEntry<MenuModel>> dropdownMenuEntries;
  final String text;
  final TextEditingController controller;
  final dynamic initialSelection;
  @override
  Widget build(BuildContext context) {
    return Column(
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
        DropdownMenu<MenuModel>(
          initialSelection: initialSelection,
          controller: controller,
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
    );
  }
}
