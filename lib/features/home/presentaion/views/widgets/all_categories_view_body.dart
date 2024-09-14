import 'package:comatecs/features/account/presentation/views/widgets/custom_title_with_back_button.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/category_item_list_view_builder.dart';
import 'package:flutter/material.dart';

class AllCategoriesViewBody extends StatelessWidget {
  const AllCategoriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomTitleWithBackButton(
              title: 'جميع الأقسام',
            ),
            SizedBox(height: 21.0),
            Expanded(
              child: CategoryItemListViewBuilder(),
            ),
          ],
        ),
      ),
    );
  }
}
