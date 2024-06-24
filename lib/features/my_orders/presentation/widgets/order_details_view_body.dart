import 'package:comatecs/core/shared/widgets/custom_button.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/account/presentation/widgets/custom_title_with_back_button.dart';
import 'package:comatecs/features/my_orders/presentation/widgets/order_detailed_item.dart';
import 'package:comatecs/features/my_orders/presentation/widgets/summarized_item_card.dart';
import 'package:comatecs/features/my_orders/presentation/widgets/wanted_price_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OrderDetailsViewBody extends StatelessWidget {
  const OrderDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 16.0,
          ),
          child: Column(
            children: [
              const Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomTitleWithBackButton(
                        title: 'تفاصيل الطلب',
                      ),
                      SummarizedItemCard(),
                      OrderDetailedItem(),
                      WantedPriceItem(),
                      SizedBox(height: 20,),
                    ],
                  ),
                ),
              ),
              CustomButton(
                onPressed: () {
                  context.push(AppRoutes.orderInvoiceView);
                },
                buttonName: 'احصل على فاتورة',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
