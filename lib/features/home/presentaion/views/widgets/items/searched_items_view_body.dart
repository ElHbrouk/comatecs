import 'package:comatecs/features/home/presentaion/cubits/search_items/search_items_cubit.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/custom_item_indicator.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/searched_item_gird_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchedItemsViewBody extends StatelessWidget {
  const SearchedItemsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchItemsCubit, SearchItemsState>(
      builder: (context, state) {
        if (state is SearchItemsSuccess) {
          return SearchedItemGirdView(items: state.items);
        } else if (state is SearchItemsFailure) {
          return Text(state.errorMessage);
        } else if (state is SearchItemsLoading) {
          return const Center(
            child: CustomItemIndicator(),
          );
        } else {
          return const Text('خطأ حاول لاحقا');
        }
      },
    );
  }
}
