import 'package:comatecs/controllers/home_controller.dart';
import 'package:comatecs/core/functions/alert_exit_app.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllerImpl controller = Get.put(HomeControllerImpl());
   
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          if (didPop) {
            return;
          }
          alertExitApp();
        },
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: HomeViewBody(),
        ),
      ),
    );
  }
}
