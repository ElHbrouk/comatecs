import 'package:comatecs/features/home/domain/entites/category_entity.dart';
import 'package:flutter/material.dart';

class HomeCategoryItem extends StatelessWidget {
  const HomeCategoryItem({
    super.key,
    required this.categoriesEntity,
  });
  final CategoryEntity categoriesEntity;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.symmetric(
        horizontal: 8.0,
        vertical: 14.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[300]!,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Text(
        categoriesEntity.categoryName,
      ),
    );
  }
}
