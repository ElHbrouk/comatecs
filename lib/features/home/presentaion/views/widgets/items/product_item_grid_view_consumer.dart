import 'package:comatecs/core/utils/functions/custom_error_snack_bar.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:comatecs/features/home/presentaion/cubits/fetch_items_cubit/fetch_items_cubit.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/custom_item_indicator.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/product_item_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductItemGridViewConsumer extends StatefulWidget {
  const ProductItemGridViewConsumer({super.key});

  @override
  State<ProductItemGridViewConsumer> createState() =>
      _ProductItemGridViewConsumerState();
}

class _ProductItemGridViewConsumerState
    extends State<ProductItemGridViewConsumer> {
  List<ItemEntity> items = [];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FetchItemsCubit, FetchItemsState>(
      listener: (BuildContext context, FetchItemsState state) {
        if (state is FetchItemsSuccess) {
          items.addAll(state.items);
        }
        if (state is FetchItemsPaginationFailure) {
          buildErrorSnackBar(context, "خطأ في تحميل المنتجات");
        }
        if (state is FetchItemsFailure) {
          buildErrorSnackBar(context, "خطأ تأكد من اتصالك بالانترنت");
        }
      },
      builder: (context, state) {
        if (state is FetchItemsLoading) {
          return const SliverToBoxAdapter(
            child: Center(
              child: CustomItemIndicator(),
            ),
          );
        } else if (state is FetchItemsFailure) {
          return SliverToBoxAdapter(child: Text(state.errorMessage));
        } else if (state is FetchItemsSuccess) {
          return ProductItemSliverGrid(
            items: state.items,
          );
        } else {
          return const SliverToBoxAdapter(
            child: Text(
              'خطأ حاول لاحقا',
            ),
          );
        }
      },
    );
  }
}
