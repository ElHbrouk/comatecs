import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/related_item_list_view.dart';
import 'package:flutter/material.dart';

class RelatedItems extends StatelessWidget {
  const RelatedItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'منتجات مشابهة',
          style: AppFonts.bold16,
        ),
        SizedBox(
          height: 20,
        ),
        RelatedItemsListView(),
      ],
    );
  }
}
