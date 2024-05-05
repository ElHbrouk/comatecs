import 'package:comatecs/core/constant/routes.dart';
import 'package:comatecs/core/shared/widgets/custom_button.dart';
import 'package:comatecs/features/auth/widgets/custom_text_form_field_auth.dart';
import 'package:comatecs/features/auth/widgets/custom_title_auth.dart';
import 'package:comatecs/features/auth/widgets/password_eye.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordViewBody extends StatefulWidget {
  const ResetPasswordViewBody({
    super.key,
  });

  @override
  State<ResetPasswordViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<ResetPasswordViewBody> {
  bool? check = false;
  bool secureText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 106, left: 20, right: 20),
      child: Column(
        children: [
          CustomTitleAuth(
            text1: '13'.tr, //reset password
          ),
          const SizedBox(
            height: 32,
          ),
          CustomTextFormFieldAuth(
            obscureText: secureText,
            suffixIcon: PasswordEye(
              onPressed: () {
                setState(() {
                  secureText = !secureText;
                });
              },
              text: secureText,
            ),

            keyboardType: TextInputType.emailAddress,
            hintText: '23'.tr, // enter password
            text: '8'.tr, //  password
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormFieldAuth(
            obscureText: secureText,
            suffixIcon: PasswordEye(
              onPressed: () {
                setState(() {
                  secureText = !secureText;
                });
              },
              text: secureText,
            ),
            keyboardType: TextInputType.emailAddress,
            hintText: '31'.tr, // re-enter password
            text: '31'.tr, //  re-enter password
          ),
          const Spacer(),
          CustomButton(
            buttonName: "14".tr,
            onPressed: () {
              Get.toNamed(AppRoutes.resetPasswordSuccessView);
            },
          ),
        ],
      ),
    );
  }
}
