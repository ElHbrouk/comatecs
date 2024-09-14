import 'package:comatecs/constants.dart';
import 'package:comatecs/core/services/shared_prefrences_singleton.dart';
import 'package:comatecs/core/utils/widgets/custom_alert_dialog_widget.dart';
import 'package:comatecs/core/utils/app_colors.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/account/data/models/setting_item_model.dart';
import 'package:comatecs/features/account/presentation/views/widgets/account_settings/account_name_and_email_builder.dart';
import 'package:comatecs/features/account/presentation/views/widgets/account_settings/account_setting_item_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

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
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              alignment: FractionalOffset.bottomCenter,
              children: [
                SvgPicture.asset(
                  width: MediaQuery.sizeOf(context).width,
                  ImageAssets.rectangle,
                ),
                Positioned(
                  top: 0,
                  child: Container(
                    alignment: Alignment.topCenter,
                    color: AppColors.primaryColor,
                    width: MediaQuery.sizeOf(context).width,
                    height: 50,
                  ),
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    height: 120,
                    ImageAssets.emoji,
                  ),
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          const SliverToBoxAdapter(
            child: AccountNameAndEmailBuilder(),
          ),
          SliverToBoxAdapter(
            child: AccountSettingItemListView(
              items: items,
              views: views,
            ),
          ),
          const SliverFillRemaining(
            fillOverscroll: false,
            hasScrollBody: false,
            child: SizedBox(),
          ),
          SliverFillRemaining(
            fillOverscroll: false,
            hasScrollBody: false,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => Dialog(
                      elevation: 5.0,
                      alignment: Alignment.center,
                      child: CustomAlertDialogWidget(
                        height: MediaQuery.sizeOf(context).height * 0.16,
                        title: 'الخروج من الحساب',
                        content:
                            'هل انت متأكد من عملية الخروج من حسابك ,تأكد من حفظ بياناتك للرجوع مرة أخرى',
                        textRightButton: 'تسجيل خروج',
                        onPressedRightButtom: () async {
                          await SharedPrefrencesSingleton.deleteSecureString(
                              key: kIsTokenGot);

                          context.go(AppRoutes.loginView);
                        },
                      ),
                    ),
                  );
                },
                child: Container(
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
