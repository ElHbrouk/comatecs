import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/product_item.dart';
import 'package:flutter/material.dart';

class RelatedItemsListView extends StatelessWidget {
  const RelatedItemsListView({
    super.key,
    required this.items,
  });
  final List<ItemEntity> items;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) => AspectRatio(
          aspectRatio: 1,
          child: ProductItem(
            itemEntity: items[index],
          ),
        ),
      ),
    );
  }
}
