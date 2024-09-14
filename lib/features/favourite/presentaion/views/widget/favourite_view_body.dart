import 'package:comatecs/core/utils/widgets/custom_view_title.dart';
import 'package:comatecs/features/favourite/presentaion/views/widget/favourite_item_grid_view_consumer.dart';
import 'package:flutter/material.dart';

class FavouriteViewBody extends StatelessWidget {
  const FavouriteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: CustomViewTitle(
              title: "المفضلة ",
            ),
          ),
          FavouriteItemGridViewConsumer(),
        ],
      ),
    );
  }
}
