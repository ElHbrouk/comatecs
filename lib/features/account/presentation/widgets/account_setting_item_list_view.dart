import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/account/data/models/setting_item_model.dart';
import 'package:comatecs/features/account/presentation/widgets/account_setting_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountSettingItemListView extends StatelessWidget {
  const AccountSettingItemListView({
    super.key,
  });
  final List<SettingItemModel> items = const [
    SettingItemModel(title: 'تعديل الملف الشخصي', icon: ImageAssets.edit),
    SettingItemModel(title: 'العنوان', icon: ImageAssets.location),
    SettingItemModel(title: 'من نحن', icon: ImageAssets.user),
    SettingItemModel(title: 'الدعم الفني', icon: ImageAssets.call),
  ];
  final List<String> views = const [
    AppRoutes.editProfileView,
    AppRoutes.itemDetailView,
    AppRoutes.editProfileView,
    AppRoutes.editProfileView,
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      shrinkWrap: true,
      itemBuilder: (context, index) => InkWell(
        borderRadius: BorderRadius.circular(16),
        
        onTap: () {
          Navigator.pushNamed(context, views[index]);
        },
        child: AccoungSettingItem(
          settingItemModel: items[index],
        ),
      ),
    );
  }
}
