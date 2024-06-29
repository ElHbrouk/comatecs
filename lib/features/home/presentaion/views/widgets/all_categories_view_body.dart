import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/features/account/presentation/views/widgets/custom_title_with_back_button.dart';
import 'package:flutter/material.dart';

class AllCategoriesViewBody extends StatelessWidget {
  const AllCategoriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              CustomTitleWithBackButton(
                title: 'جميع الأقسام',
              ),
              SizedBox(height: 21.0),
              Expanded(
                child: CategoryItemListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryItemListView extends StatelessWidget {
  const CategoryItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (builder, context) {
        return const SizedBox(
          height: 16.0,
        );
      },
      itemCount: 20,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (builder, context) {
        return const CategoryItem();
      },
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.symmetric(
        horizontal: 16.0,
        vertical: 13.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[300]!,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'الأدوات والمعدات',
            style: AppFonts.regular16.copyWith(
              color: Colors.grey[800],
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
