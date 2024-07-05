import 'package:comatecs/core/utils/image_asset.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/account/data/models/setting_item_model.dart';
import 'package:comatecs/features/account/presentation/views/widgets/account_settings/account_setting_item_list_view.dart';
import 'package:comatecs/features/account/presentation/views/widgets/custom_title_with_back_button.dart';
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
  final List<String> views = const [
    AppRoutes.editPersonalInfoView,
    AppRoutes.editPasswordView,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomTitleWithBackButton(
              title: 'تعديل الملف الشخصي',
            ),
          ),
          Expanded(
            child: AccountSettingItemListView(
              views: views,
              items: settingItems,
            ),
          ),
        ],
      ),
    );
  }
}
