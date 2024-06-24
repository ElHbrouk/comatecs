import 'package:comatecs/core/utils/app_colors.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/features/my_orders/presentation/widgets/cancelled_payment.dart';
import 'package:comatecs/features/my_orders/presentation/widgets/completed_payment.dart';
import 'package:comatecs/features/my_orders/presentation/widgets/current_payment.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 48,
          padding: const EdgeInsetsDirectional.symmetric(
            vertical: 4,
            horizontal: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Colors.grey[300]!,
            ),
          ),
          child: TabBar(
            tabAlignment: TabAlignment.fill,
            dividerHeight: 0,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelStyle: AppFonts.bold16.copyWith(
              color: Colors.grey,
            ),
            splashBorderRadius: BorderRadius.circular(5),
            indicator: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(5),
            ),
            labelStyle: AppFonts.bold16,
            labelColor: Colors.white,
            tabs: const [
              Tab(
                text: "الحالية",
              ),
              Tab(
                child: Text(
                  "الملغية",
                ),
              ),
              Tab(
                child: Text(
                  "المكتملة",
                ),
              ),
            ],
          ),
        ),
        const Expanded(
          child: TabBarView(
            children: [
              CurrentPayment(),
              CancelledPayment(),
              CompletedPayment(),
            ],
          ),
        )
      ],
    );
  }
}
