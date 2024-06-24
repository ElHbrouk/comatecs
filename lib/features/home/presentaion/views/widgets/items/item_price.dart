import 'package:comatecs/core/shared/widgets/custom_icon_button.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemPrice extends StatelessWidget {
  const ItemPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'الاسم التجاري الشائع',
          style: AppFonts.bold16.copyWith(
            color: Colors.black,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Text(
                  '16.00 JOD',
                  style: AppFonts.bold16,
                ),
                const Padding(
                  padding:
                      EdgeInsetsDirectional.only(start: 8.0, end: 8.0, top: 5),
                  child: Text(
                    '16.00 JOD',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                      start: 8.0, end: 8.0, top: 6),
                  child: Text(
                    '-50%',
                    style: AppFonts.regular12.copyWith(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                CustomIconButton(
                  color: true,
                  onPressed: () {},
                  icon: FontAwesomeIcons.plus,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5,left: 5.0, right: 5.0),
                  child: Text(
                    '50',
                    style: AppFonts.bold16,
                  ),
                ),
                CustomIconButton(
                  color: false,
                  onPressed: () {},
                  icon: FontAwesomeIcons.minus,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
