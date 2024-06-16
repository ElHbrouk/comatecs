import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemAttachments extends StatelessWidget {
  const ItemAttachments({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(': مرفقات',
        style: Theme.of(context).textTheme.displayLarge!.copyWith(

          color: Colors.black,
        ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
              child: const Row(
                children: [
                   Text(
                    'تحميل',
                  ),
                  Icon(
                    Icons.file_download_outlined,
                  )
                ],
              ),
            ),
            const Text('كتيب نموذج العمل'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
              child: const Row(
                children: [
                  Text(
                    'تحميل',
                  ),
                  Icon(
                    Icons.file_download_outlined,
                  )
                ],
              ),
            ),
            const Text('كتيب نموذج العمل'),
          ],
        ),
      ],
    );
  }
}
