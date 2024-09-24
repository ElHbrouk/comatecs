import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:comatecs/constants.dart';
import 'package:comatecs/core/services/shared_prefrences_singleton.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:comatecs/features/favourite/presentaion/cubits/add_to_favourite_cubit/add_and_remove_favourite_cubit.dart';
import 'package:comatecs/features/favourite/presentaion/cubits/fetch_favourite_items_cubit/fetch_favourite_items_cubit.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({
    super.key,
    required this.itemEntity,
  });
  final ItemEntity itemEntity;

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  late bool isFavorite =
      SharedPreferencesSingleton.getStringList(key: kFavorites)
          .map((item) => int.parse(item))
          .toList()
          .where(
            (item) => item == widget.itemEntity.itemId,
          )
          .isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey[200]!,
          width: 1,
          strokeAlign: BorderSide.strokeAlignCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: AlignmentDirectional.topEnd,
              child: InkWell(
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
                onTap: () async {
                  log(SharedPreferencesSingleton.getStringList(key: kFavorites)
                      .map((item) => int.parse(item))
                      .toList()
                      .where(
                        (item) => item == widget.itemEntity.itemId,
                      )
                      .toString());
                  if (isFavorite == false) {
                    BlocProvider.of<AddAndRemoveFavouriteCubit>(context)
                        .addToFavourite(
                            id: widget.itemEntity.itemId.toString());
                    setState(() {
                      isFavorite = true;
                    });
                    await Future.delayed(Durations.medium2);
                    BlocProvider.of<FetchFavouriteItemsCubit>(context)
                        .fetchFavouriteItems();
                  } else {
                    BlocProvider.of<AddAndRemoveFavouriteCubit>(context)
                        .removeFromFavourite(
                      id: widget.itemEntity.itemId.toString(),
                    );
                    setState(() {
                      isFavorite = false;
                    });
                    await Future.delayed(Durations.medium2);

                    BlocProvider.of<FetchFavouriteItemsCubit>(context)
                        .fetchFavouriteItems();
                  }
                },
                child: SvgPicture.asset(
                  isFavorite == true
                      ? ImageAssets.filledHeart
                      : ImageAssets.solidHeart,
                  height: 18,
                  width: 18,
                ),
              ),
            ),
          ),
          CachedNetworkImage(
            imageUrl: widget.itemEntity.itemImage,
            height: 92,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            widget.itemEntity.itemName,
            style: AppFonts.regular14,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.itemEntity.itemPrice.toString(),
                  style: AppFonts.bold16,
                ),
                SvgPicture.asset(
                  ImageAssets.cartPlus,
                  height: 24,
                  width: 24,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
