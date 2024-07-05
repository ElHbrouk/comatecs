import 'package:comatecs/core/shared/widgets/custom_button.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_text_form_field_auth.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_title_auth.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/password_eye.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.put(ResetPasswordControllerImpl());
    return Padding(
      padding: const EdgeInsets.only(bottom: 106, left: 20, right: 20),
      child: Form(
        // key: controller.key,
        child: Column(
          children: [
            const CustomTitleAuth(
              text1: "إعادة تعيين كلمة المرور", //reset password
            ),
            const SizedBox(
              height: 32,
            ),
            CustomTextFormFieldAuth(
              controller: TextEditingController(),
              validator: (value) {
                return;
                // return validInput(
                //   value: value!,
                //   min: 5,
                //   max: 20,
                //   type: "password",
                // );
              },
              obscureText: true,
              suffixIcon: PasswordEye(
                onPressed: () {
                  // controller.visiblePassword();
                },
                text: true,
              ),
    
              keyboardType: TextInputType.visiblePassword,
              hintText: " أدخل كلمة المرور", // enter password
              text: "كلمة المرور", //  password
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextFormFieldAuth(
              validator: (value) {
                return;
                // return validInput(
                //   value: value!,
                //   min: 8,
                //   max: 20,
                //   type: "password",
                // );
              },
              obscureText: true,
              controller: TextEditingController(),
              suffixIcon: PasswordEye(
                onPressed: () {
                  // controller.visiblePassword();
                },
                text: true,
              ),
              keyboardType: TextInputType.visiblePassword,
              hintText: "تأكيد كلمة المرور", // re-enter password
              text: "تأكيد كلمة المرور", //  re-enter password
            ),
            const Spacer(),
            CustomButton(
              buttonName: "إرسال",
              onPressed: () {
                context.push(AppRoutes.resetPasswordSuccessView);
                // controller.resetPassword();
              },
            ),
          ],
        ),
      ),
    );
  }
}
