
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class WantedPriceItem extends StatelessWidget {
  const WantedPriceItem({
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
                'مبلغ الطلب',
                style: AppFonts.bold14.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'المجموع الفرعي',
                  style: AppFonts.regular14.copyWith(
                    color: Colors.black,
                  ),
                ),
                const Text(
                  '16.000 د.أ',
                  style: AppFonts.bold14,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'الشحن',
                    style: AppFonts.regular14.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    '10.000 د.أ',
                    style: AppFonts.bold14,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Divider(),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'السعر الإجمالي',
                  style: AppFonts.bold16,
                ),
                Text(
                  '32.000 د.أ',
                  style: AppFonts.bold16,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'مجموع النقاط',
                    style: AppFonts.regular16.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '230',
                    style: AppFonts.regular16.copyWith(
                      color: Colors.black,
                    ),
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

