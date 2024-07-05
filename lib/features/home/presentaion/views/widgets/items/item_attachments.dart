import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class ItemAttachments extends StatelessWidget {
  const ItemAttachments({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ' مرفقات :',
          style: AppFonts.bold14.copyWith(
            color: Colors.black,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'كتيب نموذج العمل',
              style: AppFonts.regular12,
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              onPressed: () {},
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      'تحميل',
                      style: AppFonts.regular12,
                    ),
                  ),
                  Icon(
                    Icons.file_download_outlined,
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'كتيب نموذج العمل',
              style: AppFonts.regular12,
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              onPressed: () {},
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      'تحميل',
                      style: AppFonts.regular12,
                    ),
                  ),
                  Icon(
                    Icons.file_download_outlined,
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
