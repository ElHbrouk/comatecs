import 'package:comatecs/constants.dart';
import 'package:comatecs/core/utils/app_colors.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/features/my_orders/domain/entites/order_entity.dart';
import 'package:comatecs/features/my_orders/presentation/views/widgets/order_summarize_item.dart';
import 'package:flutter/material.dart';

class SummarizedItemCard extends StatelessWidget {
  const SummarizedItemCard({
    super.key,
    required this.orderEntity,
  });
  final OrderEntity orderEntity;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(top: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(
          color: Colors.grey[300]!,
        ),
      ),
      padding: const EdgeInsetsDirectional.symmetric(
        horizontal: kHorizontalPadding,
        vertical: 16.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ملخص الطلب',
            style: AppFonts.bold14.copyWith(
              color: Colors.black,
            ),
          ),
          const Divider(),
          const CustomOrderSummarizeItem(
            text1: 'رمز الطلب',
            text2: '#1254631',
            text2Color: AppColors.primaryColor,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: CustomOrderSummarizeItem(
              text1: 'تاريخ الطلب',
              text2:
                  '${orderEntity.date.day} - ${orderEntity.date.month} - ${orderEntity.date.year}',
              text2Color: Colors.grey[700]!,
            ),
          ),
          CustomOrderSummarizeItem(
            text1: 'حالة السداد  ',
            text2: orderEntity.paymentCondition,
            text2Color: AppColors.primaryColor,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: CustomOrderSummarizeItem(
              text1: 'طريقة الدفع',
              text2: orderEntity.paymentMethod,
              text2Color: Colors.grey[700]!,
            ),
          ),
          CustomOrderSummarizeItem(
            text1: 'عنوان الشحن',
            text2: 'المكان',
            text2Color: Colors.grey[700]!,
          ),
        ],
      ),
    );
  }
}
