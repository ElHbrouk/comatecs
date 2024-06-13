import 'package:comatecs/controllers/auth_controllers/sign_up/sign_up_success_controller.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:comatecs/core/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SuccessBody extends StatelessWidget {
  const SuccessBody(
      {super.key, required this.buttonName, required this.message});
  final String buttonName;
  final String message;
  @override
  Widget build(BuildContext context) {
    SignUpSuccessControllerImpl controller =
        Get.put(SignUpSuccessControllerImpl());
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
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const Spacer(
              flex: 2,
            ),
            CustomButton(
              onPressed: () {
                controller.goToLogin();
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
