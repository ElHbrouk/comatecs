import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PayWithHand extends StatelessWidget {
  const PayWithHand({
    super.key,
     this.borderColor,
  });
  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.symmetric(
        vertical: 16.0,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          5.0,
        ),
        border: Border.all(
          color: borderColor ?? Colors.grey[300]!,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 13.0,
            ),
            child: SvgPicture.asset(
              ImageAssets.moneyBoket,
            ),
          ),
          Column(
            children: [
              Text(
                'الدفع عند استلام المنتج',
                style: AppFonts.regular16.copyWith(
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                'استلم منتجاتك أولاَ ثم ادفع (باليد) ',
                style: AppFonts.regular12.copyWith(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
