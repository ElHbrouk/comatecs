import 'package:comatecs/core/utils/app_colors.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class PointsItem extends StatelessWidget {
  const PointsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10.0),
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.4,
      ),
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        '500 نقطة',
        style: AppFonts.regular14.copyWith(
          color: Colors.grey,
        ),
      ),
    );
  }
}
