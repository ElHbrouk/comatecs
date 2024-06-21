import 'package:comatecs/core/shared/widgets/custom_view_title.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/login/custom_text_field.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/filter_button.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/home_image_slider.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/product_item_grid_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
        SliverToBoxAdapter(
          child: CustomViewTitle(
            title: "تسوق معنا ",
          ),
        ),
        SliverToBoxAdapter(
          child: HomeImageSlider(),
        ),
        SliverToBoxAdapter(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: CustomTextField(
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
        SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        ProductItemGridView(),
      ]),
    );
  }
}
