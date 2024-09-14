import 'package:comatecs/features/home/presentaion/cubits/fetch_categories_cubit/fetch_categories_cubit.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/category_item_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryItemListViewBuilder extends StatelessWidget {
  const CategoryItemListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchCategoriesCubit, FetchCategoriesState>(
      builder: (context, state) {
        if (state is FetchCategoriesLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is FetchCategoriesSuccess) {
          return CategoryItemListView(
            categories: state.categories,
          );
        } else if (state is FetchCategoriesFailure) {
          return Center(
            child: Text(state.errorMessage),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
