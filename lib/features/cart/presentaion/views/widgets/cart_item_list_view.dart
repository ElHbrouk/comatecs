import 'package:comatecs/features/cart/domain/entites/cart_entity.dart';
import 'package:comatecs/features/cart/presentaion/views/widgets/cart_item.dart';
import 'package:flutter/widgets.dart';

class CartItemListView extends StatelessWidget {
  const CartItemListView({super.key, required this.items});
  final List<CartEntity> items;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) => CartItem(
        cartEntity: items[index],
      ),
    );
  }
}
