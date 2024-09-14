import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/core/utils/widgets/custom_view_title.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/categories_list_view_builder.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/custom_text_fiteld_search_builder.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/filter_button.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/home_image_slider.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/product_item_grid_view_consumer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const CustomViewTitle(
                  title: "تسوق معنا ",
                ),
                const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: CustomTextFieldSearchBuilder(),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 10.0),
                      child: FilterButton(),
                    ),
                  ],
                ),
                const HomeImageSlider(),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'الأقسام',
                          style: AppFonts.bold16.copyWith(
                            color: Colors.black,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            context.push(
                              AppRoutes.allCategoriesView,
                            );
                          },
                          child: Text(
                            'مشاهدة الكل',
                            style: AppFonts.regular12.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const CategoriesListViewBuilder(),
                  ],
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 24.0,
                bottom: 16.0,
              ),
              child: Text(
                "الأكثر طلباَ",
                style: AppFonts.bold16.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const ProductItemGridViewConsumer(),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
        ],
      ),
    );
  }
}
