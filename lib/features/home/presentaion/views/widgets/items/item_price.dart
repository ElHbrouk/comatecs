import 'package:comatecs/features/home/presentaion/views/widgets/items/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemPrice extends StatelessWidget {
  const ItemPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'الاسم التجاري الشائع',
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                color: Colors.black,
              ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CustomIconButton(
                  color: true,
                  onPressed: () {},
                  icon: FontAwesomeIcons.plus,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 7.0, left: 3.0, right: 3.0),
                  child: Text(
                    '50',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
                CustomIconButton(
                  color: false,
                  onPressed: () {},
                  icon: FontAwesomeIcons.minus,
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                      start: 8.0, end: 8.0, top: 6),
                  child: Text(
                    '-50%',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          color: Colors.red,
                        ),
                  ),
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
                Text(
                  '16.00 JOD',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
