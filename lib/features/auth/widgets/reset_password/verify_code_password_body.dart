import 'package:comatecs/controllers/auth_controllers/reset_password/verify_code_password_controller.dart';
import 'package:comatecs/core/constant/app_colors.dart';
import 'package:comatecs/features/auth/widgets/custom_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCodePasswordBody extends StatefulWidget {
  const VerifyCodePasswordBody({
    super.key,
    this.onSubmit,
  });
  final void Function(String)? onSubmit;
  @override
  State<VerifyCodePasswordBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<VerifyCodePasswordBody> {
  bool? check = false;
  @override
  Widget build(BuildContext context) {
    VerifyCodePasswordControllerImpl controller =
        Get.put(VerifyCodePasswordControllerImpl());
    return Padding(
      padding: const EdgeInsets.only(bottom: 106, left: 20, right: 20),
      child: Column(
        children: [
          CustomTitleAuth(
            text1: '46'.tr,
          ),
          OtpTextField(
            borderRadius: BorderRadius.circular(20),
            textStyle: Theme.of(context).textTheme.bodyLarge,
            fieldWidth: 50.0,
            alignment: Alignment.center,
            numberOfFields: 5,
            enabledBorderColor: Colors.grey[500]!,
            focusedBorderColor: AppColors.primaryColor,
            borderColor: AppColors.primaryColor,
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              controller.goToResetPassword();
            }, // end onSubmit
          ),
        ],
      ),
    );
  }
}
