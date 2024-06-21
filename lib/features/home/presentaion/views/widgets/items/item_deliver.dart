import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class ItemDeliver extends StatelessWidget {
  const ItemDeliver({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'التسليم :',
          style: AppFonts.bold14.copyWith(
            color: Colors.black,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ': التوصيل',
              style: AppFonts.regular12.copyWith(
                color: Colors.grey,
              ),
            ),
            Text(
              'JOD 5',
              style: AppFonts.regular16.copyWith(
                color: Colors.black,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ':  التسليم',
              style: AppFonts.regular12.copyWith(
                color: Colors.grey,
              ),
            ),
            Text(
              'خلال يوم ',
              style: AppFonts.regular16.copyWith(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
