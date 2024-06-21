import 'package:comatecs/controllers/auth_controllers/sign_up/sign_up_controller.dart';
import 'package:comatecs/core/class/handling_data_view.dart';
import 'package:comatecs/core/functions/valid_input.dart';
import 'package:comatecs/core/shared/widgets/custom_button.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_text_form_field_auth.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_text_row.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_title_auth.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/password_eye.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.put(SignUpControllerImpl());
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 80,
          bottom: 45,
          left: 20,
          right: 20,
        ),
        child: Form(
          // key: controller.key,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomTitleAuth(
                  text1: "إنشاء حساب جديد", //Create a new account!
                  text2: "مرحبًا بك, استمتع بتجربة تسوق مميزة معنا", // Hello,Enjoy Shopping with us
                ),
                const SizedBox(
                  height: 32,
                ),
                CustomTextFormFieldAuth(
                  validator: (value) {
                    return;
                    // return validInput(
                    //     value: value!, min: 3, max: 20, type: "username");
                  },
                  controller: TextEditingController(),
                  keyboardType: TextInputType.name,
                  hintText: "أدخل اسم المستخدم", //Enter User Name
                  text: "اسم المستخدم", //User Name
                ),
                const SizedBox(
                  height: 41,
                ),
                CustomTextFormFieldAuth(
                  validator: (value) {
                    return;
                    // return validInput(
                    //     value: value!, min: 5, max: 50, type: "email");
                  },
                  controller: TextEditingController(),
                  keyboardType: TextInputType.emailAddress,
      
                  hintText: "  أدخل إيميل المستخدم", //Enter User Name
                  text: " تم إنشاء الحساب بنجاح", //User Name
                ),
                const SizedBox(
                  height: 41,
                ),
      
                //    CustomTextFormFieldAuth(
                //     validator: (value) {
                //       return;
                //       // return validInput(
                //       //     value: value!, min: 8, max: 30, type: "password");
                //     },
                //     // controller: controller.password,
                //     // obscureText: controller.isNotVisible,
                //     hintText: '23', //Enter Password
                //     text: '8', //Password
                //     // suffixIcon: PasswordEye(
                //       // onPressed: () {
                //       //   controller.showPassword();
                //       // },
                //       // text: controller.isNotVisible,
                //     // ),
      
                // }),
                // const SizedBox(
                //   height: 41,
                // ),
                CustomTextFormFieldAuth(
                  validator: (value) {
                    return;
                    // return validInput(
                    //     value: value!, min: 8, max: 11, type: "phoneNumber");
                  },
                  controller: TextEditingController(),
                  hintText: "أدخل رقم الهاتف", //Enter mobile number
                  keyboardType: TextInputType.phone,
                  text: "رقم الهاتف", //Mobile Number
                ),
                // CustomTextFormFieldAuth(
                //   keyboardType: TextInputType.streetAddress,
                //   hintText: '24'.tr, //Address
                //   text: '24'.tr, //Address
                // ),
                // const SizedBox(
                //   height: 41,
                // ),
      
                // const SizedBox(
                //   height: 41,
                // ),
                // CustomTextFormFieldAuth(
                //   hintText: '29'.tr, //Enter you job
      
                //   text: '16'.tr, //job
                // ),
                // const SizedBox(
                //   height: 41,
                // ),
                // CustomTextFormFieldAuth(
                //   hintText: '25'.tr, // Choose company kind
                //   text: '17'.tr, // Company
                // ),
                // const SizedBox(
                //   height: 41,
                // ),
                // CustomTextFormFieldAuth(
                //   hintText: '26'.tr, // Choose number of employees
                //   keyboardType: TextInputType.number,
                //   text: '18'.tr, // number of employees
                // ),
                // const SizedBox(
                //   height: 41,
                // ),
                // CustomTextFormFieldAuth(
                //   hintText: '27'.tr, // choose your major
                //   text: '19'.tr, // your major
                // ),
                const SizedBox(
                  height: 40,
                ),
                CustomButton(
                  buttonName: "تسجيل جديد", // SignUp
                  onPressed: () {
                    // controller.signUp();
                  },
                ),
                const SizedBox(height: 30),
                CustomTextRow(
                  onPressed: () {
                    // controller.goToLogin();
                  },
                  text1: " يوجد حساب ؟", // already have an account?
                  text2: "تسجيل الدخول", // login
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
