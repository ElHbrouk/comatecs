import 'package:comatecs/core/utils/widgets/custom_button.dart';
import 'package:comatecs/core/utils/app_colors.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/core/utils/widgets/custom_password_field.dart';
import 'package:comatecs/features/auth/domain/entities/user_entity.dart';
import 'package:comatecs/features/auth/presentaion/cubits/login_cubit/login_cubit.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_check_box.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_text_form_field_auth.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_text_row.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> loginKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 80.0, bottom: 45, left: 20, right: 20),
      child: Form(
        key: loginKey,
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
                controller: email,
                hintText: "  أدخل إيميل المستخدم", // enter user name
                keyboardType: TextInputType.emailAddress,
                text: " إيميل المستخدم", // User Name
              ),
              const SizedBox(
                height: 16,
              ),
              CustomPasswordField(
                controller: password,
                hintText: 'أدخل كلمة المرور',
                text: 'كلمة المرور',
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomCheckBox(),
                  TextButton(
                    onPressed: () {
                      context.push(AppRoutes.forgetPasswordView);
                    },
                    child: Text(
                      "هل نسيت كلمة المرور؟", //  forgot password?
                      style: AppFonts.regular14.copyWith(
                        color: AppColors.primaryColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50.0),
              CustomButton(
                buttonName: "تسجيل الدخول", // login
                onPressed: () {
                  if (loginKey.currentState!.validate()) {
                    loginKey.currentState!.save();
                    BlocProvider.of<LoginCubit>(context).login(
                      userEntity: UserEntity(
                        phoneNumber: null,
                        address: null,
                        workType: null,
                        companyType: null,
                        employeeNumber: null,
                        yourRole: null,
                        email: email.text,
                        password: password.text,
                      ),
                    );
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
              const SizedBox(height: 40),
              CustomTextRow(
                onPressed: () {
                  context.push(AppRoutes.signUpView);
                },
                text1: "مستخدم جديد؟", // A new user?
                text2: "إنشاء حساب جديد", //Create a new account!
              )
            ],
          ),
        ),
      ),
    );
  }
}
