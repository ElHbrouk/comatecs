import 'package:comatecs/constants.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/features/my_orders/domain/entites/order_entity.dart';
import 'package:flutter/material.dart';

class TabBarItem extends StatelessWidget {
  const TabBarItem(
      {super.key,
      required this.orderEntity,
      required this.paymentStatusColor,
      required this.orderStatusColor});
  final OrderEntity orderEntity;
  final Color paymentStatusColor;
  final Color orderStatusColor;
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
        padding: const EdgeInsets.symmetric(
          horizontal: kHorizontalPadding,
          vertical: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  orderEntity.orderId.toString(),
                  style: AppFonts.regular14,
                ),
                Text(
                  '${orderEntity.date.day} - ${orderEntity.date.month} - ${orderEntity.date.year}',
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
                          text: orderEntity.paymentCondition,
                          style: AppFonts.regular14.copyWith(
                            color: paymentStatusColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '${orderEntity.totalPrice} د.أ',
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
                    text: orderEntity.orderStatus,
                    style: AppFonts.regular14.copyWith(
                      color: orderStatusColor,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
