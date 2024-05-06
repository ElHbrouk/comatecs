import 'package:comatecs/controllers/auth_controllers/login/login_controller.dart';
import 'package:comatecs/core/constant/app_colors.dart';
import 'package:comatecs/core/functions/valid_input.dart';
import 'package:comatecs/core/shared/widgets/custom_button.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_check_box.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_text_form_field_auth.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_text_row.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_title_auth.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/password_eye.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  bool? check = false;
  bool secureText = true;
  
  @override
  Widget build(BuildContext context) {
    LoginControllerImpl controller = Get.put(LoginControllerImpl());
    return Padding(
      padding:
          const EdgeInsets.only(top: 80.0, bottom: 45, left: 20, right: 20),
      child: Form(
        key: controller.key,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTitleAuth(
                text1: '4'.tr, // login
                text2: '5'.tr, // Welcome back
              ),
              const SizedBox(
                height: 32,
              ),
              CustomTextFormFieldAuth(
                validator: (value) {
                  return validInput(
                      value: value!, min: 5, max: 100, type: "email");
                },
                controller: controller.email,
                hintText: '${'42'.tr} / ${'7'.tr}', // enter user name
                keyboardType: TextInputType.emailAddress,
                text: '${'48'.tr} / ${'7'.tr}', // User Name
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormFieldAuth(
                controller: controller.password,
                obscureText: secureText,
                hintText: '23'.tr, // enter password
                keyboardType: TextInputType.visiblePassword,
                text: '8'.tr, //Password
                suffixIcon: PasswordEye(
                  onPressed: () {
                    setState(() {
                      secureText = !secureText;
                    });
                  },
                  text: secureText,
                ),
                validator: (value) {
                  return validInput(
                      value: value!, min: 8, max: 30, type: "password");
                },
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        controller.goToForgetPassword();
                      },
                      child: Text(
                        "10".tr, //  forgot password?
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: AppColors.primaryColor,
                              decoration: TextDecoration.underline,
                            ),
                      )),
                  CustomCheckBox(
                    check: check!,
                    onChanged: (value) {
                      setState(
                        () {
                          check = value;
                        },
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 50.0),
              CustomButton(
                buttonName: "4".tr, // login
                onPressed: () {
                  controller.login();
             
                },
              ),
              const SizedBox(height: 40),
              CustomTextRow(
                onPressed: () {
                  controller.goToSignUp();
                },
                text1: '12'.tr, // A new user?
                text2: '11'.tr, //Create a new account!
              )
            ],
          ),
        ),
      ),
    );
  }
}