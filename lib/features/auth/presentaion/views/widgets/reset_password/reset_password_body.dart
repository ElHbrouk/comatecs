import 'package:comatecs/controllers/auth_controllers/reset_password/reset_password_controller.dart';
import 'package:comatecs/core/functions/valid_input.dart';
import 'package:comatecs/core/shared/widgets/custom_button.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_text_form_field_auth.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_title_auth.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/password_eye.dart';
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

  bool secureText = true;
  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImpl controller = Get.put(ResetPasswordControllerImpl());
    return Padding(
      padding: const EdgeInsets.only(bottom: 106, left: 20, right: 20),
      child: Form(
        key: controller.key,
        child: Column(
          children: [
            CustomTitleAuth(
              text1: '13'.tr, //reset password
            ),
            const SizedBox(
              height: 32,
            ),
            CustomTextFormFieldAuth(
              validator: (value) {
                return validInput(
                  value: value!,
                  min: 5,
                  max: 20,
                  type: "password",
                );
              },
              obscureText: secureText,
              suffixIcon: PasswordEye(
                onPressed: () {
                  setState(() {
                    secureText = !secureText;
                  });
                },
                text: secureText,
              ),
        
              keyboardType: TextInputType.visiblePassword,
              hintText: '23'.tr, // enter password
              text: '8'.tr, //  password
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextFormFieldAuth(
              validator: (value) {
                return validInput(
                  value: value!,
                  min: 5,
                  max: 20,
                  type: "password",
                );
              },
              obscureText: secureText,
              suffixIcon: PasswordEye(
                onPressed: () {
                  setState(() {
                    secureText = !secureText;
                  });
                },
                text: secureText,
              ),
              keyboardType: TextInputType.visiblePassword,
              hintText: '31'.tr, // re-enter password
              text: '31'.tr, //  re-enter password
            ),
            const Spacer(),
            CustomButton(
              buttonName: "14".tr,
              onPressed: () {
                controller.resetPassword();
               controller.goToSuccessResetPassowrd();
              },
            ),
          ],
        ),
      ),
    );
  }
}
