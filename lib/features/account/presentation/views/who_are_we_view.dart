import 'package:comatecs/core/utils/image_asset.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/account/data/models/setting_item_model.dart';
import 'package:comatecs/features/account/presentation/views/widgets/account_settings/account_setting_item_list_view.dart';
import 'package:comatecs/features/account/presentation/views/widgets/custom_title_with_back_button.dart';
import 'package:flutter/material.dart';

class WhoAreWeView extends StatelessWidget {
  const WhoAreWeView({super.key});
  final List<SettingItemModel> items = const [
    SettingItemModel(
      title: 'عن  Comatecs',
      icon: ImageAssets.edit,
    ),
    SettingItemModel(
      title: 'شروط و سياسة الاستخدام',
      icon: ImageAssets.edit,
    ),
  ];
  final List<String> views = const [
    AppRoutes.aboutComactesView,
    AppRoutes.termsAndConditionsView,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
            ),
            child: Column(
              children: [
                const CustomTitleWithBackButton(
                  title: 'من نحن',
                ),
                Expanded(
                    child: AccountSettingItemListView(
                  views: views,
                  items: items,
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
