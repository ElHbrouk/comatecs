import 'package:comatecs/core/utils/functions/custom_error_snack_bar.dart';
import 'package:comatecs/features/favourite/presentaion/cubits/fetch_favourite_items_cubit/fetch_favourite_items_cubit.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/custom_item_indicator.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/product_item_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouriteItemGridViewConsumer extends StatefulWidget {
  const FavouriteItemGridViewConsumer({super.key});
  static List<ItemEntity> items = [];
  @override
  State<FavouriteItemGridViewConsumer> createState() =>
      _FavouriteItemGridViewConsumerState();
}

class _FavouriteItemGridViewConsumerState
    extends State<FavouriteItemGridViewConsumer> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FetchFavouriteItemsCubit, FetchFavouriteItemsState>(
      listener: (BuildContext context, FetchFavouriteItemsState state) {
        // if (state is FetchFavouriteItemsSuccess) {
        //   FavouriteItemGridViewConsumer.items.addAll(state.items);
        // }
        // if (state is FetchItemsPaginationFailure) {
        //   buildErrorSnackBar(context, "خطأ في تحميل المنتجات");
        // }
        if (state is FetchFavouriteItemsFauiler) {
          buildErrorSnackBar(context, "خطأ تأكد من اتصالك بالانترنت");
        }
      },
      builder: (context, state) {
        if (state is FetchFavouriteItemsLoading) {
          return const SliverToBoxAdapter(
            child: Center(
              child: CustomItemIndicator(),
            ),
          );
        } else if (state is FetchFavouriteItemsFauiler) {
          return SliverToBoxAdapter(
            child: Text(state.errorMessage),
          );
        } else if (state is FetchFavouriteItemsSuccess) {
          if (state.items.isNotEmpty) {
            return ProductItemSliverGrid(
              items: state.items,
            );
          } else {
            return const SliverFillRemaining(
              child: Center(
                child: Text('لا يوجد منتجات في المفضلة'),
              ),
            );
          }
        } else {
          return const SliverToBoxAdapter(
            child: Text('خطأ حاول لاحقا'),
          );
        }
      },
    );
  }
}
