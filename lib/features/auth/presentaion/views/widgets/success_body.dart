import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:comatecs/core/shared/widgets/custom_button.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SuccessBody extends StatelessWidget {
  const SuccessBody(
      {super.key, required this.buttonName, required this.message});
  final String buttonName;
  final String message;
  @override
  Widget build(BuildContext context) {
    // SignUpSuccessControllerImpl controller =
    //     Get.put(SignUpSuccessControllerImpl());
    return Scaffold(
      body: Container(
        margin: const EdgeInsetsDirectional.symmetric(
          horizontal: 20,
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 3,
            ),
            Container(
              padding: const EdgeInsetsDirectional.all(20),
              decoration: BoxDecoration(
                color: const Color(0xff1c1c1c).withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(ImageAssets.successIcon),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              message,
              style: AppFonts.bold18.copyWith(
                color: Colors.black,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            CustomButton(
              onPressed: () {
                context.go(AppRoutes.loginView);
                // controller.goToLogin();
              },
              buttonName: buttonName,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
