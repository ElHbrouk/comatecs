import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/home/domain/entites/category_entity.dart';
import 'package:comatecs/features/home/presentaion/cubits/fetch_specific_category_cubit/fetch_specific_category_cubit.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/home_category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeCategoryItemListView extends StatelessWidget {
  const HomeCategoryItemListView({super.key, required this.categoryEntity});
  final List<CategoryEntity> categoryEntity;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 8,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: categoryEntity.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            BlocProvider.of<FetchSpecificCategoryCubit>(context)
                .fetchSpecificCategory(id: categoryEntity[index].categoryId);
            context.push(AppRoutes.categoryItemsView);
          },
          child: HomeCategoryItem(
            categoriesEntity: categoryEntity[index],
          ),
        ),
      ),
    );
  }
}
