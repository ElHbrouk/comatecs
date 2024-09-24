import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/home/domain/entites/category_entity.dart';
import 'package:comatecs/features/home/presentaion/cubits/fetch_specific_category_cubit/fetch_specific_category_cubit.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CategoryItemListView extends StatelessWidget {
  const CategoryItemListView({
    super.key,
    required this.categories,
  });
  final List<CategoryEntity> categories;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 16.0,
        );
      },
      itemCount: categories.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            BlocProvider.of<FetchSpecificCategoryCubit>(context).fetchSpecificCategory(
              id: categories[index].categoryId,
            );
            context.push(AppRoutes.categoryItemsView);
          },
          child: CategoryItem(
            categoryEntity: categories[index],
          ),
        );
      },
    );
  }
}
