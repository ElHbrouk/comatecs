import 'package:comatecs/features/account/presentation/views/widgets/custom_title_with_back_button.dart';
import 'package:comatecs/features/home/domain/entites/category_entity.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/product_item_grid_view.dart';
import 'package:flutter/material.dart';

class CategoryItemsViewBody extends StatelessWidget {
  const CategoryItemsViewBody({super.key, required this.categoryEntity});
  final CategoryEntity categoryEntity;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomTitleWithBackButton(title: categoryEntity.categoryName),
        ),
        ProductItemSliverGrid(
          items: categoryEntity.categoryProducts,
        ),
      ],
    );
  }
}
