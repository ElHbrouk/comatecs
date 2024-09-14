import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/product_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchedItemGirdView extends StatefulWidget {
  const SearchedItemGirdView({
    super.key,
    required this.items,
  });
  final List items;

  @override
  State<SearchedItemGirdView> createState() => _SearchedItemGirdViewState();
}

class _SearchedItemGirdViewState extends State<SearchedItemGirdView> {
  // late final ScrollController controller;
  // var nextPage = 1;
  // bool isLoading = false;
  // @override
  // void initState() {
  //   controller = ScrollController();
  //   controller.addListener(scrollLisenter);

  //   super.initState();
  // }

  // void scrollLisenter() async {
  //   var currentPosition = controller.position.pixels;
  //   var maxScrollLength = controller.position.maxScrollExtent;
  //   if (currentPosition >= 0.7 * maxScrollLength) {
  //     {
  //       if (!isLoading) {
  //         isLoading = true;
  //         await BlocProvider.of<FetchItemsCubit>(context).fechItems(
  //           pageNumber: nextPage++,
  //         );
  //         isLoading = false;
  //       }
  //     }
  //   }
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   controller.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // controller: controller,
      physics: const BouncingScrollPhysics(),
      itemCount: widget.items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        mainAxisSpacing: 16,
        crossAxisSpacing: 9,
      ),
      itemBuilder: (BuildContext context, int index) => InkWell(
        onTap: () {
          context.pushNamed(
            AppRoutes.itemDetailView,
            extra: widget.items[index],
          );
        },
        child: ProductItem(
          itemEntity: widget.items[index],
        ),
      ),
    );
  }
}
