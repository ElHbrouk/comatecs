import 'package:comatecs/core/utils/widgets/price_item_button.dart';
import 'package:comatecs/core/utils/widgets/custom_view_title.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/cart/presentaion/views/widgets/cart_item_list_view_builder.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 24.0,
        left: 20,
        right: 20,
      ),
      child: Column(
        children: [
          const CustomViewTitle(
            title: "السلة",
          ),
          const SizedBox(
            height: 16,
          ),
          const Expanded(
            child: CartItemListViewBuilder(),
          ),
          PriceItemButton(
            price: 'JOD 32.000',
            buttonName: 'الشحن',
            onPressed: () {
              context.push(AppRoutes.paymentView);
            },
          ),
        ],
      ),
    );
  }
}
