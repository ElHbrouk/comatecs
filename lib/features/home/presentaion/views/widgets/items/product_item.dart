import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({super.key});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool isFavorite = false;
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
                onTap: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
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
          Image.asset(
            ImageAssets.imagesBox,
            height: 92,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'الاسم التجاري الشائع',
            style: AppFonts.regular14,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '16.000',
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
