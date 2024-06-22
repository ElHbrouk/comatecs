import 'package:comatecs/core/utils/image_asset.dart';
import 'package:comatecs/features/account/presentation/account_view.dart';
import 'package:comatecs/features/cart/presentaion/view/cart_view.dart';
import 'package:comatecs/features/favourite/presentaion/view/favourite_view.dart';
import 'package:comatecs/features/home/presentaion/views/home_view.dart';
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
    HomeView(),
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
            // alertExitApp();
          },
          child: SafeArea(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: views[selectedView],
            ),
          )),
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: NavigationBar(
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
                ImageAssets.layoutHome,
              ),
              label: 'الرئيسية',
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                ImageAssets.layoutHeart,
              ),
              label: 'المفضلة',
            ),
            NavigationDestination(
              icon: SvgPicture.asset(ImageAssets.layoutCart),
              label: 'السلة',
            ),
            NavigationDestination(
              icon: SvgPicture.asset(ImageAssets.layoutList),
              label: 'طلباتي',
            ),
            NavigationDestination(
              icon: SvgPicture.asset(ImageAssets.layoutUser),
              label: 'حسابي',
            ),
          ],
        ),
      ),
    );
  }
}
