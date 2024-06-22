import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/account/data/models/setting_item_model.dart';
import 'package:comatecs/features/account/presentation/widgets/account_settings/account_setting_item_list_view.dart';
import 'package:comatecs/features/account/presentation/widgets/account_settings/points_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({
    super.key,
  });
  final List<String> views = const [
    AppRoutes.editProfileView,
    AppRoutes.editAddressView,
    AppRoutes.whoAreWeView,
    AppRoutes.technicalSupportView,
  ];
  final List<SettingItemModel> items = const [
    SettingItemModel(title: 'تعديل الملف الشخصي', icon: ImageAssets.edit),
    SettingItemModel(title: 'العنوان', icon: ImageAssets.location),
    SettingItemModel(title: 'من نحن', icon: ImageAssets.user),
    SettingItemModel(title: 'الدعم الفني', icon: ImageAssets.call),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Stack(
            alignment: FractionalOffset.bottomCenter,
            children: [
              SvgPicture.asset(
                width: MediaQuery.sizeOf(context).width,
                ImageAssets.rectangle,
              ),
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white,
                child: Image.asset(
                  height: 150,
                  ImageAssets.emoji,
                ),
              ),
            ],
          ),
          Text(
            'عمر محمد',
            style: AppFonts.bold16.copyWith(
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, bottom: 16),
            child: Text(
              'Omar.M@gmail.com',
              style: AppFonts.regular16.copyWith(
                color: Colors.grey,
              ),
            ),
          ),
          const PointsItem(),
          AccountSettingItemListView(
            items: items,
            views: views,
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey[300]!,
              ),
              borderRadius: BorderRadius.circular(
                8.0,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 10.0,
              ),
              child: Row(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        height: 18,
                        ImageAssets.logout,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'تسجيل خروج',
                        style: AppFonts.regular14.copyWith(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
