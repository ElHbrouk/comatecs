import 'package:comatecs/core/utils/image_asset.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/login/custom_text_form_field.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/filter_button.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/product_item_grid_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
      SliverToBoxAdapter(
        child: ListTile(
          title: Text(
            "تسوق معنا ",
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  color: Colors.black,
                ),
          ),
          leading: Image.asset(height: 30, ImageAssets.appLogo2),
        ),
      ),
      const SliverToBoxAdapter(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: CustomTextFormField(
                hintText: "ابحث عن اسم المنتج",
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 10.0),
              child: FilterButton(),
            ),
          ],
        ),
      ),
      const SliverToBoxAdapter(
        child: SizedBox(
          height: 20,
        ),
      ),
      const ProductItemGridView(),
    ]);
  }
}
