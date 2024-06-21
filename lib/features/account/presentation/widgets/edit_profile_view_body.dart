import 'package:comatecs/core/shared/widgets/custom_back_button.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:comatecs/features/account/data/models/setting_item_model.dart';
import 'package:comatecs/features/account/presentation/widgets/account_setting_item.dart';
import 'package:flutter/material.dart';

class EditProfileViewBody extends StatelessWidget {
  const EditProfileViewBody({super.key});
  final List<SettingItemModel> settingItems = const [
    SettingItemModel(
      title: 'تعديل البيانات الشخصية',
      icon: ImageAssets.edit,
    ),
    SettingItemModel(
      title: 'تعديل كلمة المرور',
      icon: ImageAssets.edit,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CustomBackButton(),
                  Text(
                    'تعديل الملف الشخصي',
                    style: AppFonts.bold16.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: settingItems.length,
                itemBuilder: (context, index) => AccoungSettingItem(
                  settingItemModel: settingItems[index],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
