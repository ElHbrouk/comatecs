import 'package:comatecs/controllers/auth_controllers/sign_up/verify_code_sign_up_controller.dart';
import 'package:comatecs/core/constant/app_colors.dart';
import 'package:comatecs/features/auth/widgets/custom_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCodeSignUpBody extends StatefulWidget {
  const VerifyCodeSignUpBody({
    super.key,
    this.onSubmit,
  });
  final void Function(String)? onSubmit;
  @override
  State<VerifyCodeSignUpBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<VerifyCodeSignUpBody> {
  bool? check = false;
  @override
  Widget build(BuildContext context) {
    VerifySignUpControllerImpl controller = Get.put(VerifySignUpControllerImpl());
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
              controller.goToSignUpSuccess();
            }, // end onSubmit
          ),
        ],
      ),
    );
  }
}
