import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              child: SvgPicture.asset(
                ImageAssets.solidHeart,
                height: 18,
                width: 18,
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
          const Text('الاسم التجاري الشائع',
          
          style: AppFonts.regular14,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    '16.000',
                    style: AppFonts.bold16,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SvgPicture.asset(
                    ImageAssets.cartPlus,
                    height: 24,
                    width: 24,
                  ),
                ),
              ],
            ),
          ),
         
        ],
      ),
    );
  }
}
