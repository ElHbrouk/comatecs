import 'dart:convert';

import 'package:comatecs/constants.dart';
import 'package:comatecs/core/services/shared_prefrences_singleton.dart';
import 'package:comatecs/core/utils/functions/custom_error_snack_bar.dart';
import 'package:comatecs/core/utils/widgets/custom_button.dart';
import 'package:comatecs/features/cart/data/data_sources/cart_remote_data_source.dart';
import 'package:comatecs/features/cart/presentaion/cubits/add_and_remove_from_cart/add_and_remove_from_cart_cubit.dart';
import 'package:comatecs/features/cart/presentaion/cubits/fetch_cart_items/fetch_cart_items_cubit.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:comatecs/features/home/presentaion/cubits/home_counter_cubit/counter_cubit.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/custom_cart_button.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/item_attachments.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/item_deliver.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/item_details_info.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/item_features.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/item_price.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/item_video.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class ItemDetailViewBody extends StatelessWidget {
  const ItemDetailViewBody({super.key, required this.itemEntity});
  final ItemEntity itemEntity;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddAndRemoveFromCartCubit, AddAndRemoveFromCartState>(
      listener: (context, state) {
        if (state is AddToCartSuccess) {
          buildSuccessSnackBar(context, 'تم الاضافة الي السلة بنجاح');
        } else if (state is AddToCartFailure) {
          buildErrorSnackBar(context, 'فشل الاضافة الي السلة');
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is AddToCartLoading,
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 20.0),
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(
                decelerationRate: ScrollDecelerationRate.fast,
              ),
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const ItemVideo(),
                      ItemPrice(
                        itemEntity: itemEntity,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      ItemDetailsInfo(
                        itemEntity: itemEntity,
                      ),
                      const Divider(),
                      ItemFeatures(
                        itemEntity: itemEntity,
                      ),
                      const Divider(),
                      const ItemAttachments(),
                      const Divider(),
                      ItemDeliver(
                        itemEntity: itemEntity,
                      ),
                      const Divider(),
                    ],
                  ),
                ),
                // const SliverToBoxAdapter(
                //   child: RelatedItems(),
                // ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomButton(
                            onPressed: () async {
                              if (getCartItemsDecoded(
                                    json.decode(
                                      SharedPreferencesSingleton.getString(
                                          key: kCartItems),
                                    ),
                                  )
                                      .where((item) =>
                                          item.item.itemId == itemEntity.itemId)
                                      .isNotEmpty ==
                                  false) {
                                BlocProvider.of<AddAndRemoveFromCartCubit>(
                                        context)
                                    .addToCart(
                                  quantity:
                                      BlocProvider.of<CounterCubit>(context)
                                          .state,
                                  productId: itemEntity.itemId.toString(),
                                );
                                await Future.delayed(Durations.medium2);
                                BlocProvider.of<FetchCartItemsCubit>(context)
                                    .fetchCartItems();
                              } else {
                                buildErrorSnackBar(context,
                                    'هذا المنتج موجود بالفعل في السلة');
                              }
                            },
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
          ),
        );
      },
    );
  }
}
