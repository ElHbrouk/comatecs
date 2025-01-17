import 'package:comatecs/core/utils/functions/custom_show_bottom_sheet.dart';
import 'package:comatecs/core/utils/app_colors.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/show_modal_bottom_sheet_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      height: 60,
      color: AppColors.primaryColor,
      onPressed: () {
        customShowBottomSheet(
          context: context,
          child: const ShowModalBottomSheetItem(),
        );
      },
      child: SvgPicture.asset(
        ImageAssets.filter,
      ),
    );
  }
}
