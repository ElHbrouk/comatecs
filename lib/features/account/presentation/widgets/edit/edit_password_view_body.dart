import 'package:comatecs/core/shared/widgets/custom_button.dart';
import 'package:comatecs/features/account/presentation/widgets/custom_title_with_back_button.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_text_form_field_auth.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/password_eye.dart';
import 'package:flutter/material.dart';

class EditPasswordViewBody extends StatelessWidget {
  const EditPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 30, left: 20, right: 20),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: CustomTitleWithBackButton(
                  title: 'تعديل كلمة المرور',
                ),
              ),
              Expanded(
                child: Form(
                  // key: controller.key,
                  child: Column(
                    children: [
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
                        buttonName: "حفظ",
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
