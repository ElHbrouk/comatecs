import 'package:comatecs/core/utils/widgets/custom_button.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/account/presentation/views/widgets/custom_title_with_back_button.dart';
import 'package:comatecs/features/my_orders/domain/entites/order_entity.dart';
import 'package:comatecs/features/my_orders/presentation/views/widgets/order_detailed_item.dart';
import 'package:comatecs/features/my_orders/presentation/views/widgets/summarized_item_card.dart';
import 'package:comatecs/features/my_orders/presentation/views/widgets/wanted_price_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OrderDetailsViewBody extends StatelessWidget {
  const OrderDetailsViewBody({
    super.key,
    required this.orderEntity,
  });
  final OrderEntity orderEntity;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 16.0,
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const CustomTitleWithBackButton(
                      title: 'تفاصيل الطلب',
                    ),
                    SummarizedItemCard(
                      orderEntity: orderEntity,
                    ),
                     OrderDetailedItem(
                      orderEntity: orderEntity,
                     ),
                    const WantedPriceItem(),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            CustomButton(
              onPressed: () {
                context.pushNamed(
                  AppRoutes.orderInvoiceView,
                  extra: orderEntity,
                );
              },
              buttonName: 'احصل على فاتورة',
            ),
          ],
        ),
      ),
    );
  }
}
