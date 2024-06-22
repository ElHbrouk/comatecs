import 'package:comatecs/core/shared/widgets/custom_button.dart';
import 'package:comatecs/core/utils/app_colors.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_check_box.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_text_form_field_auth.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_text_row.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_title_auth.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/password_eye.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.put(LoginControllerImpl());

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 80.0, bottom: 45, left: 20, right: 20),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomTitleAuth(
                  text1: "تسجيل الدخول", // login
                  text2: "مرحبا بعودتك مجددا", // Welcome back
                ),
                const SizedBox(
                  height: 32,
                ),
                CustomTextFormFieldAuth(
                  validator: (value) {
                    return;
                    // return validInput(
                    //     value: value!, min: 5, max: 100, type: "email");
                  },
                  controller: TextEditingController(),
                  hintText:
                      '${"  أدخل إيميل المستخدم"} / ${"اسم المستخدم"}', // enter user name
                  keyboardType: TextInputType.emailAddress,
                  text: '${" إيميل المستخدم"} / ${"اسم المستخدم"}', // User Name
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextFormFieldAuth(
                    controller: TextEditingController(),
                    obscureText: true,
                    hintText: " أدخل كلمة المرور", // enter password
                    keyboardType: TextInputType.visiblePassword,
                    text: "كلمة المرور", //Password
                    suffixIcon: PasswordEye(
                      onPressed: () {
                        // controller.showPassword();
                      },
                      text: true,
                    ),
                    validator: (value) {
                      //   return validInput(
                      //       value: value!, min: 8, max: 30, type: "password");
                      // },
                      return;
                    }),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomCheckBox(
                      check: true,
                      onChanged: (value) {
                        // controller.customCheck();
                      },
                    ),
                    TextButton(
                        onPressed: () {
                          context.push(AppRoutes.forgetPasswordView);
                          // controller.goToForgetPassword();
                        },
                        child: Text(
                          "هل نسيت كلمة المرور؟", //  forgot password?
                          style: AppFonts.regular14.copyWith(
                            color: AppColors.primaryColor,
                            decoration: TextDecoration.underline,
                          ),
                        )),
                  ],
                ),
                const SizedBox(height: 50.0),
                CustomButton(
                  buttonName: "تسجيل الدخول", // login
                  onPressed: () {
                    context.push(AppRoutes.homeLayout);
                    // controller.login();
                  },
                ),
                const SizedBox(height: 40),
                CustomTextRow(
                  onPressed: () {
                    context.push(AppRoutes.signUpView);
                    // controller.goToSignUp();
                  },
                  text1: "مستخدم جديد؟", // A new user?
                  text2: "إنشاء حساب جديد", //Create a new account!
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
