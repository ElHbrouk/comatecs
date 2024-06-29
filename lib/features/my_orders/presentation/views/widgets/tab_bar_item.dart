import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/features/my_orders/data/payment_item_model.dart';
import 'package:flutter/material.dart';

class TabBarItem extends StatelessWidget {
  const TabBarItem(
      {super.key,
      required this.paymentItemModel,
      required this.paymentStatus,
      required this.orderStatus});
  final PaymentItemModel paymentItemModel;
  final Color paymentStatus;
  final Color orderStatus;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.grey[300]!,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  paymentItemModel.id,
                  style: AppFonts.regular14,
                ),
                Text(
                  paymentItemModel.date,
                  style: AppFonts.regular14.copyWith(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        const TextSpan(
                          text: 'حالة السداد -  ',
                          style: AppFonts.regular14,
                        ),
                        TextSpan(
                            text: paymentItemModel.paymentStatus,
                            style: AppFonts.regular14.copyWith(
                              color: paymentStatus,
                            ))
                      ],
                    ),
                  ),
                  Text(
                    '${paymentItemModel.price} د.أ',
                    style: AppFonts.regular14.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  const TextSpan(
                    text: 'حالة الطلب -  ',
                    style: AppFonts.regular14,
                  ),
                  TextSpan(
                      text: paymentItemModel.orderStatus,
                      style: AppFonts.regular14.copyWith(
                        color: orderStatus,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
