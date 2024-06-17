import 'package:comatecs/features/home/presentaion/views/widgets/items/product_item.dart';
import 'package:flutter/material.dart';

class RelatedItemsListView extends StatelessWidget {
  const RelatedItemsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1.7,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          separatorBuilder: (context, index) => const SizedBox(
            width: 10,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) => const AspectRatio(
            aspectRatio: 1,
            child: ProductItem(),
          ),
        ),
      ),
    );
  }
}
