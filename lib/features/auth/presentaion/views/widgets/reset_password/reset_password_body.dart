import 'package:comatecs/core/utils/widgets/custom_button.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/core/utils/widgets/custom_password_field.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_text_form_field_auth.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_title_auth.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/password_eye.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
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
            CustomPasswordField(
              controller: TextEditingController(),
              hintText: 'أدخل كلمة المرور',
              text: 'كلمة المرور',
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextFormFieldAuth(
              validator: (value) {
                return;
              },
              obscureText: true,
              controller: TextEditingController(),
              suffixIcon: PasswordEye(
                onPressed: () {},
                obsecureText: true,
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
              },
            ),
          ],
        ),
      ),
    );
  }
}
