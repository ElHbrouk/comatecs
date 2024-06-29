import 'package:comatecs/core/shared/price_item_button.dart';
import 'package:comatecs/features/account/presentation/views/widgets/custom_title_with_back_button.dart';
import 'package:comatecs/features/payment/presentaion/views/widgets/payment_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PayOperationViewBody extends StatelessWidget {
  const PayOperationViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsetsDirectional.only(
          top: 20.0,
          end: 20.0,
          start: 20.0,
        ),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTitleWithBackButton(
                    title: 'عملية الدفع',
                  ),
                  Text(
                    'حدد خيار الدفع',
                  ),
                  PaymentMethods(),
                ],
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 20.0,
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: PriceItemButton(
                    buttonName: 'تأكيد',
                    price: 'JOD 32.000',
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
