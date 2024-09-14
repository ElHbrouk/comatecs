import 'package:comatecs/constants.dart';
import 'package:comatecs/core/services/shared_prefrences_singleton.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/splash/presentaion/views/widgets/splash/splash_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  Future<void> executeNavigation() async {
    bool isBoardingSeen = await SharedPrefrencesSingleton.getBool(
      key: kIsOnBoardingSeen,
    );

    String token = await SharedPrefrencesSingleton.getSecureString(
      key: kIsTokenGot,
    );

    if (isBoardingSeen) {
      if (token.isNotEmpty) {
        return Future.delayed(const Duration(seconds: 1), () {
          context.go(AppRoutes.homeLayout);
        });
      } else {
        return Future.delayed(const Duration(seconds: 1), () {
          context.go(AppRoutes.loginView);
        });
      }
    } else {
      return Future.delayed(const Duration(seconds: 1), () {
        context.go(AppRoutes.onBoardingView);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
