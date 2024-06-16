import 'package:comatecs/core/shared/widgets/custom_button.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/custom_cart_button.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/item_attachments.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/item_deliver.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/item_details_info.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/item_features.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/item_price.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/related_items.dart';
import 'package:flutter/material.dart';

class ItemDetailViewBody extends StatelessWidget {
  const ItemDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 20.0),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(
          decelerationRate: ScrollDecelerationRate.fast,
        ),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ItemPrice(),
                SizedBox(
                  height: 24,
                ),
                ItemDetailsInfo(),
                Divider(),
                ItemFeatures(),
                Divider(),
                ItemAttachments(),
                Divider(),
                ItemDeliver(),
                Divider(),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: RelatedItems(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  CustomCartButton(),
                  Expanded(
                    child: CustomButton(
                      buttonName: "أضف إلى السلة",
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
