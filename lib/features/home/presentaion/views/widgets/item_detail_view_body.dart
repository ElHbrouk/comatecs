import 'package:comatecs/core/shared/widgets/custom_button.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/custom_cart_button.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/item_attachments.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/item_deliver.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/item_details_info.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/item_features.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/item_price.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/item_video.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/related_items.dart';
import 'package:flutter/material.dart';

class ItemDetailViewBody extends StatelessWidget {
  const ItemDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 20.0),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(
          decelerationRate: ScrollDecelerationRate.fast,
        ),
        slivers: [
          const SliverToBoxAdapter(
            child: Column(
              children: [
                ItemVideo(),
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
          const SliverFillRemaining(
            hasScrollBody: false,
            child: RelatedItems(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      onPressed: () {},
                      buttonName: "أضف إلى السلة",
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const CustomCartButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
