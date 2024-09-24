import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:comatecs/features/home/presentaion/cubits/fetch_items_cubit/fetch_items_cubit.dart';
import 'package:comatecs/features/home/presentaion/cubits/fetch_specific_item_cubit/fetch_specific_item_cubit.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProductItemSliverGrid extends StatefulWidget {
  const ProductItemSliverGrid({
    super.key,
    required this.items,
  });
  final List<ItemEntity> items;

  @override
  State<ProductItemSliverGrid> createState() => _ProductItemSliverGridState();
}

class _ProductItemSliverGridState extends State<ProductItemSliverGrid> {
  late final ScrollController controller;
  var nextPage = 1;
  bool isLoading = false;
  @override
  void initState() {
    controller = ScrollController();
    controller.addListener(scrollLisenter);

    super.initState();
  }

  void scrollLisenter() async {
    var currentPosition = controller.position.pixels;
    var maxScrollLength = controller.position.maxScrollExtent;
    if (currentPosition >= 0.7 * maxScrollLength) {
      {
        if (!isLoading) {
          isLoading = true;
          await BlocProvider.of<FetchItemsCubit>(context).fechItems(
            pageNumber: nextPage++,
          );
          isLoading = false;
        }
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: widget.items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        mainAxisSpacing: 16,
        crossAxisSpacing: 9,
      ),
      itemBuilder: (BuildContext context, int index) => InkWell(
        onTap: () {
          BlocProvider.of<FetchSpecificItemCubit>(context).fetchSpecificItem(
            id: widget.items[index].itemId,
          );
          context.push(AppRoutes.itemDetailView);
        },
        child: ProductItem(
          itemEntity: widget.items[index],
        ),
      ),
    );
  }
}
