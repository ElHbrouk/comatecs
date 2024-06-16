import 'package:comatecs/core/utils/app_colors.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/custom_drop_down_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShowModalBottomSheetItem extends StatelessWidget {
  const ShowModalBottomSheetItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.infinity,
      margin: const EdgeInsetsDirectional.all(15),
      child: Column(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 0.2,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                ': تصفية المنتج من خلال ',
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: Colors.black,
                    ),
              ),
              SvgPicture.asset(
                ImageAssets.filter,
                height: 26,
                colorFilter: const ColorFilter.mode(
                  AppColors.primaryColor,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.all(16),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                ': فئة المنتج ',
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(color: Colors.black),
              ),
            ),
          ),
          const CustomDropDownMenu(
            label: 'اختر نوع الفئة',
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.all(16),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                ': العلامة التجارية',
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(color: Colors.black),
              ),
            ),
          ),
          const CustomDropDownMenu(
            label: 'اختر العلامة التجارية',
          ),
          RangeSlider(
            min: 1,
            max: 110,
            values: const RangeValues(1, 100),
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}