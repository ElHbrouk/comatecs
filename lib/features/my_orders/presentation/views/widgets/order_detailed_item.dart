import 'package:comatecs/constants.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/features/my_orders/domain/entites/order_entity.dart';
import 'package:flutter/material.dart';

class OrderDetailedItem extends StatelessWidget {
  const OrderDetailedItem({
    super.key,
    required this.orderEntity,
  });
  final OrderEntity orderEntity;
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
          horizontal: kHorizontalPadding,
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
            ListView.separated(
              itemCount: orderEntity.cartEntity.length,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Divider(),
              ),
              shrinkWrap: true,
              itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      orderEntity.cartEntity[index].item.itemName,
                      style: AppFonts.regular14.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        orderEntity.cartEntity[index].itemCartQuantity
                            .toString(),
                        style: AppFonts.regular14.copyWith(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '${orderEntity.cartEntity[index].item.itemPrice * orderEntity.cartEntity[index].itemCartQuantity}',
                        style: AppFonts.bold14,
                      ),
                    ],
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
