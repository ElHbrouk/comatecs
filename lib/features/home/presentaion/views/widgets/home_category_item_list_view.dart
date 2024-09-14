import 'package:comatecs/features/home/domain/entites/category_entity.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/home_category_item.dart';
import 'package:flutter/material.dart';

class HomeCategoryItemListView extends StatelessWidget {
  const HomeCategoryItemListView({super.key, required this.categoryEntity});
  final List<CategoryEntity> categoryEntity;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 8,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: categoryEntity.length,
        itemBuilder: (context, index) => InkWell(
          child: HomeCategoryItem(
            categoriesEntity: categoryEntity[index],
          ),
        ),
      ),
    );
  }
}
