import 'package:comatecs/core/utils/widgets/custom_button.dart';
import 'package:comatecs/features/auth/domain/entities/user_entity.dart';
import 'package:comatecs/features/auth/presentaion/cubits/signup_cubit/signup_cubit.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_text_form_field_auth.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_text_row.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_title_auth.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/sign_up/custom_drop_down_menu_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController workType = TextEditingController();
  TextEditingController companyType = TextEditingController();
  TextEditingController employeeNumber = TextEditingController();
  TextEditingController yourRole = TextEditingController();
  TextEditingController address = TextEditingController();
  final GlobalKey<FormState> globalKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 80,
        bottom: 45,
        left: 20,
        right: 20,
      ),
      child: Form(
        autovalidateMode: autovalidateMode,
        key: globalKey,
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
                controller: name,
                keyboardType: TextInputType.name,
                hintText: "أدخل اسم المستخدم", //Enter User Name
                text: "اسم المستخدم", //User Name
              ),
              const SizedBox(
                height: 41,
              ),
              CustomTextFormFieldAuth(
                validator: (value) {
                  if (value == null || !value.contains("@") || value.isEmpty || value.length < 8) {
                    return "البريد الالكتروني غير صالح";
                  } else {
                    return null;
                  }
                },
                controller: email,
                keyboardType: TextInputType.emailAddress,

                hintText: "أدخل إيميل المستخدم", //Enter User Name
                text: "إيميل المستخدم", //User Name
              ),
              const SizedBox(
                height: 41,
              ),
              CustomTextFormFieldAuth(
                controller: phone,
                hintText: "أدخل رقم الهاتف", //Enter mobile number
                keyboardType: TextInputType.phone,
                text: "رقم الهاتف", //Mobile Number
              ),
              const SizedBox(
                height: 41,
              ),
              CustomTextFormFieldAuth(
                controller: address,
                hintText: "أدخل العنوان", //Enter address
                keyboardType: TextInputType.streetAddress,
                text: " العنوان", //address
              ),
              const SizedBox(
                height: 41,
              ),
              CustomDropDownMenuList(
                workType: workType,
                companyType: companyType,
                employeeNumber: employeeNumber,
                yourRole: yourRole,
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButton(
                buttonName: "تسجيل جديد", // SignUp
                onPressed: () async {
                  if (globalKey.currentState!.validate()) {
                    globalKey.currentState!.save();
                    await BlocProvider.of<SignUpCubit>(context)
                        .createAccountWithEmailAndPassword(
                      userEntity: UserEntity(
                        phoneNumber: phone.text,
                        address: address.text,
                        workType: workType.text,
                        companyType: companyType.text,
                        employeeNumber: employeeNumber.text,
                        yourRole: yourRole.text,
                        email: email.text,
                        password: null,
                      ),
                    );
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
              const SizedBox(height: 30),
              CustomTextRow(
                onPressed: () {
                  context.pop();
                },
                text1: " يوجد حساب ؟", // already have an account?
                text2: "تسجيل الدخول", // login
              )
            ],
          ),
        ),
      ),
    );
  }
}
