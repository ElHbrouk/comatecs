import 'package:comatecs/features/account/data/models/setting_item_model.dart';
import 'package:comatecs/features/account/presentation/widgets/account_settings/account_setting_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AccountSettingItemListView extends StatelessWidget {
  const AccountSettingItemListView({
    super.key,
    required this.views, required this.items,
  });
  final List<String> views;
  final List<SettingItemModel> items;
  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: views.length,
      shrinkWrap: true,
      itemBuilder: (context, index) => InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          context.push(views[index]);
        },
        child: AccoungSettingItem(
          settingItemModel: items[index],
        ),
      ),
    );
  }
}
