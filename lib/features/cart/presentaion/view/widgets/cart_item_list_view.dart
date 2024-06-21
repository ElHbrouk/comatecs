import 'package:comatecs/features/cart/presentaion/view/widgets/cart_item.dart';
import 'package:flutter/widgets.dart';

class CartItemListView extends StatelessWidget {
  const CartItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) => const CartItem(),
    );
  }
}
