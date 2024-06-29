import 'package:comatecs/core/shared/price_item_button.dart';
import 'package:comatecs/core/shared/widgets/custom_order_table.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/account/presentation/views/widgets/custom_title_with_back_button.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/login/custom_text_field.dart';
import 'package:comatecs/features/payment/presentaion/views/widgets/custom_payment_detail_table.dart';
import 'package:comatecs/features/payment/presentaion/views/widgets/custom_payment_operation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class PaymentViewBody extends StatelessWidget {
  const PaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 20.0,
            end: 20.0,
            top: 20,
            bottom: 20.0,
          ),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomTitleWithBackButton(
                        title: 'تفاصيل الشراء',
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      const CustomOrderTable(),
                      const CustomPaymentDetailTable(),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 24.0,
                        ),
                        child: Text(
                          'عملية الشحن',
                          style: AppFonts.bold16.copyWith(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const CustomPaymentOperation(),
                      Row(
                        children: [
                          Text(
                            'ملاحظات',
                            style: AppFonts.bold16.copyWith(
                              color: Colors.black,
                            ),
                          ),
                          SvgPicture.asset(
                            ImageAssets.edit,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const CustomTextField(
                        maxLines: 3,
                        hintText: 'اكتب ملاحظاتك على الطلب ...',
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                    ],
                  ),
                ),
              ),
              PriceItemButton(
                buttonName: 'التالي',
                price: 'JOD 32.000',
                onPressed: () {
                  context.push(AppRoutes.payOperationView);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
