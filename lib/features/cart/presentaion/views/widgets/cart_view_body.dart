import 'package:comatecs/core/utils/functions/get_total_cart_price.dart';
import 'package:comatecs/core/utils/widgets/price_item_button.dart';
import 'package:comatecs/core/utils/widgets/custom_view_title.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/cart/domain/entites/cart_entity.dart';
import 'package:comatecs/features/cart/presentaion/views/widgets/cart_item_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key, required this.cartItems});
  final List<CartEntity> cartItems;
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
          Expanded(
            child: CartItemListView(
              items: cartItems,
            ),
          ),
          PriceItemButton(
            price: 'JOD ${getTotalcartPrice(cartItems)}',
            buttonName: 'الشحن',
            onPressed: () {
              context.pushNamed(
                AppRoutes.paymentView,
                extra: cartItems,
              );
            },
          ),
        ],
      ),
    );
  }
}
