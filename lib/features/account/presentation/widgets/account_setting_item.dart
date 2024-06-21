import 'package:comatecs/core/utils/app_colors.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/features/account/data/models/setting_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AccoungSettingItem extends StatelessWidget {
  const AccoungSettingItem({
    super.key,
    required this.settingItemModel,
  });
  final SettingItemModel settingItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[300]!,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
        child: Row(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  height: 18,
                  settingItemModel.icon,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  settingItemModel.title,
                  style: AppFonts.regular14.copyWith(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              size: 18,
              Icons.arrow_forward_ios,
            ),
          ],
        ),
      ),
    );
  }
}
