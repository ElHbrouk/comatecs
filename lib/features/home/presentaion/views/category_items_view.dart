import 'package:comatecs/features/home/presentaion/cubits/fetch_specific_category_cubit/fetch_specific_category_cubit.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/category_items_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryItemsView extends StatelessWidget {
  const CategoryItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FetchSpecificCategoryCubit, FetchSpecificCategoryState>(
          builder: (context, state) {
            if (state is FetchSpecificCategoryLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is FetchSpecificCategorySuccess) {
              if (state.categoryEntity.categoryProducts.isNotEmpty) {
                return CategoryItemsViewBody(
                  categoryEntity: state.categoryEntity,
                );
              } else {
                return const Center(child: Text('لا يوجد منتجات'));
              }
            } else if (state is FetchSpecificCategoryFailure) {
              return Center(
                child: Text(state.errorMessage),
              );
            } else {
              return const Text('حدث خطأ حاول مرة أخرى');
            }
          },
        ),
      ),
    );
  }
}
