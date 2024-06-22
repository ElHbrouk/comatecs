import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/product_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductItemGridView extends StatelessWidget {
  const ProductItemGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 15,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        mainAxisSpacing: 16,
        crossAxisSpacing: 9,
      ),
      itemBuilder: (BuildContext context, int index) => InkWell(
          onTap: () {
            context.push(AppRoutes.itemDetailView);
            // Get.to(() => const ItemDetailView());
          },
          child: const ProductItem()),
    );
  }
}
