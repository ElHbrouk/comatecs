import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemDeliver extends StatelessWidget {
  const ItemDeliver({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          ': التسليم',
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                color: Colors.black,
              ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'JOD 5',
            ),
            Text(
              ': التوصيل',
            ),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('خلال يوم '),
            Text(': التسليم'),
          ],
        ),
      ],
    );
  }
}
