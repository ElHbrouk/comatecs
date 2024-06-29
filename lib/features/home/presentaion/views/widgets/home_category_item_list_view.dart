import 'package:comatecs/features/home/presentaion/views/widgets/home_category_item.dart';
import 'package:flutter/material.dart';

class HomeCategoryItemListView extends StatelessWidget {
  const HomeCategoryItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 8,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => const InkWell(
          child: HomeCategoryItem(),
        ),
      ),
    );
  }
}
