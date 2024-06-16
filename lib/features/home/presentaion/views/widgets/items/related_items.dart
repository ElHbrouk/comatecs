
import 'package:comatecs/features/home/presentaion/views/widgets/items/related_item_list_view.dart';
import 'package:flutter/material.dart';

class RelatedItems extends StatelessWidget {
  const RelatedItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'منتجات مشابهة',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(child: RelatedItemsListView()),
      ],
    );
  }
}
