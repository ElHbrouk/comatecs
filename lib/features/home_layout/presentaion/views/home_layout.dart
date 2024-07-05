import 'dart:io';

import 'package:comatecs/core/helper_functions/custom_alert_dialog.dart';
import 'package:comatecs/core/shared/widgets/custom_alert_dialog_widget.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:comatecs/features/account/presentation/views/account_view.dart';
import 'package:comatecs/features/cart/presentaion/views/cart_view.dart';
import 'package:comatecs/features/favourite/presentaion/views/favourite_view.dart';
import 'package:comatecs/features/home/presentaion/views/home_view.dart';
import 'package:comatecs/features/my_orders/presentation/views/my_orders_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  List<Widget> views = const [
    HomeView(),
    FavouriteView(),
    CartView(),
    MyOrdersView(),
    AccountView(),
  ];

  int selectedView = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopScope(
          canPop: false,
          onPopInvoked: (didPop) {
            if (didPop) {
              return;
            }
            customAlertDialog(
              context: context,
              child: CustomAlertDialogWidget(
                endIndent: 0.0,
                onPressedRightButtom: () {
                  exit(0);
                },
                height: MediaQuery.sizeOf(context).height * 0.14,
                title: '  الخروج من التطبيق',
                content: 'هل أنت متأكد من الخروج ؟',
                textRightButton: 'خروج',
              ),
            );
          },
          child: SafeArea(
            child: views[selectedView],
          )),
      bottomNavigationBar: NavigationBar(
        indicatorColor: Colors.transparent,
        backgroundColor: Colors.white,
        elevation: 0.0,
        selectedIndex: selectedView,
        onDestinationSelected: (int index) {
          setState(() {
            selectedView = index;
          });
        },
        destinations: [
          NavigationDestination(
            icon: SvgPicture.asset(
              selectedView == 0
                  ? ImageAssets.layoutHomeFilled
                  : ImageAssets.layoutHomeUnfilled,
            ),
            label: 'الرئيسية',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              selectedView == 1
                  ? ImageAssets.layoutHeartFilled
                  : ImageAssets.layoutHeartUnfilled,
            ),
            label: 'المفضلة',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              selectedView == 2
                  ? ImageAssets.layoutCartFilled
                  : ImageAssets.layoutCartUnfilled,
            ),
            label: 'السلة',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              selectedView == 3
                  ? ImageAssets.layoutListFilled
                  : ImageAssets.layoutListUnfilled,
            ),
            label: 'طلباتي',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              selectedView == 4
                  ? ImageAssets.layoutUserFilled
                  : ImageAssets.layoutUserUnfilled,
            ),
            label: 'حسابي',
          ),
        ],
      ),
    );
  }
}
