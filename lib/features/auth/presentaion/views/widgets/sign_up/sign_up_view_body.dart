import 'package:comatecs/core/shared/widgets/custom_button.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_text_form_field_auth.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_text_row.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_title_auth.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/custom_drop_down_menu.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
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
                const CustomTitleAuth(
                  text1: "إنشاء حساب جديد", //Create a new account!
                  text2:
                      "مرحبًا بك, استمتع بتجربة تسوق مميزة معنا", // Hello,Enjoy Shopping with us
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
                  text: " إيميل المستخدم", //User Name
                ),
                const SizedBox(
                  height: 41,
                ),
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
                const SizedBox(
                  height: 41,
                ),
                const CustomDropDownMenu(
                  label: 'اختر طبيعة عملك ',
                  dropdownMenuEntries: [
                    DropdownMenuEntry(value: "hi", label: 'معدات صناعية'),
                    DropdownMenuEntry(value: "why", label: 'الأدوات والمعدات'),
                    DropdownMenuEntry(value: "bye", label: 'عدد يدوية'),
                    DropdownMenuEntry(value: "die", label: 'معدات صناعية'),
                  ],
                  text: 'طبيعية العمل',
                ),
                const SizedBox(
                  height: 41,
                ),
                const CustomDropDownMenu(
                  label: 'اختر نوع الشركة',
                  dropdownMenuEntries: [
                    DropdownMenuEntry(value: "hi", label: 'معدات صناعية'),
                    DropdownMenuEntry(value: "why", label: 'الأدوات والمعدات'),
                    DropdownMenuEntry(value: "bye", label: 'عدد يدوية'),
                    DropdownMenuEntry(value: "die", label: 'معدات صناعية'),
                  ],
                  text: 'نوع الشركة',
                ),
                const SizedBox(
                  height: 41,
                ),
                const CustomDropDownMenu(
                  label: 'اختر  عدد الموظفين ',
                  dropdownMenuEntries: [
                    DropdownMenuEntry(value: "hi", label: '2'),
                    DropdownMenuEntry(value: "why", label: '6'),
                    DropdownMenuEntry(value: "bye", label: '10'),
                    DropdownMenuEntry(value: "die", label: '15'),
                  ],
                  text: 'عدد الموظفين',
                ),
                const SizedBox(
                  height: 41,
                ),
                const CustomDropDownMenu(
                  label: 'اختر وظيفتك',
                  dropdownMenuEntries: [
                    DropdownMenuEntry(value: "hi", label: 'مدير'),
                    DropdownMenuEntry(value: "why", label: 'سائق'),
                    DropdownMenuEntry(value: "bye", label: 'محاسب'),
                    DropdownMenuEntry(value: "die", label: 'موظف'),
                  ],
                  text: 'وظيفتتك داخل الشركة',
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomButton(
                  buttonName: "تسجيل جديد", // SignUp
                  onPressed: () {
                    context.push(AppRoutes.signUpSuccess);
                    // controller.signUp();
                  },
                ),
                const SizedBox(height: 30),
                CustomTextRow(
                  onPressed: () {
                    context.go(AppRoutes.loginView);
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
