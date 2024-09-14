import 'package:comatecs/features/home/presentaion/cubits/fetch_filtered_items_cubit/fetch_filtered_items_cubit.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/filtered_items_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilteredItemsViewBody extends StatelessWidget {
  const FilteredItemsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProductItemGridViewFilteredBuilder();
  }
}

class ProductItemGridViewFilteredBuilder extends StatelessWidget {
  const ProductItemGridViewFilteredBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchFilteredItemsCubit, FetchFilteredItemsState>(
      builder: (context, state) {
        if (state is FetchFilteredItemsSuccess) {
          return FilteredItemsGridView(
            items: state.items,
          );
        } else if (state is FetchFilteredItemsFailure) {
          return Center(
            child: Text(state.message),
          );
        } else if (state is FetchFilteredItemsLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return const Center(
            child: Text('حدث خطأ'),
          );
        }
      },
    );
  }
}
