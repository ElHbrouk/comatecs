import 'package:comatecs/features/home/domain/entites/category_entity.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/category_item.dart';
import 'package:flutter/material.dart';

class CategoryItemListView extends StatelessWidget {
  const CategoryItemListView({
    super.key,
    required this.categories,
  });
  final List<CategoryEntity> categories;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 16.0,
        );
      },
      itemCount: categories.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return CategoryItem(
          categoryEntity: categories[index],
        );
      },
    );
  }
}
