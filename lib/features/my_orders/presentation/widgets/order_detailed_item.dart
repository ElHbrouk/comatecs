import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class OrderDetailedItem extends StatelessWidget {
  const OrderDetailedItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 16.0),
      elevation: 0,
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.grey[300]!,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'تفاصيل الطلب',
                style: AppFonts.bold14.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'الاسم التجاري للمنتج',
                style: AppFonts.regular14.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'الكمية * 1',
                  style: AppFonts.regular14.copyWith(
                    color: Colors.black,
                  ),
                ),
                const Text(
                  '8.000 د.أ',
                  style: AppFonts.bold14,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Divider(),
            ),
            Text(
              'الاسم التجاري للمنتج',
              style: AppFonts.regular14.copyWith(
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'الكمية * 1',
                    style: AppFonts.regular14.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    '8.000 د.أ',
                    style: AppFonts.bold14,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
