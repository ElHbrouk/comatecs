import 'package:comatecs/core/shared/widgets/custom_button.dart';
import 'package:comatecs/features/account/presentation/views/widgets/custom_title_with_back_button.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_text_form_field_auth.dart';
import 'package:flutter/material.dart';

class EditPersonalInfoViewBody extends StatelessWidget {
  const EditPersonalInfoViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 30,
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomTitleWithBackButton(
                title: 'تعديل البيانات الشخصية',
              ),
              Form(
                // key: controller.key,
                child: Column(
                  children: [
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
      
                      hintText: "  أدخل إيميل المستخدم", //Enter User Email
                      text: " إيميل المستخدم", //User Email
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
                    CustomTextFormFieldAuth(
                      hintText: "أدخل طبيعة عملك", //Enter you job
      
                      text: "طبيعة العمل",
                      validator: (value) {
                        return;
                      }, //job
                    ),
                    const SizedBox(
                      height: 41,
                    ),
                    CustomTextFormFieldAuth(
                      hintText: "اختر نوع الشركة", // Choose company kind
                      text: "نوع الشركة ",
                      validator: (value) {
                        return;
                      }, // Company
                    ),
                    const SizedBox(
                      height: 41,
                    ),
                    CustomTextFormFieldAuth(
                      validator: (value) {
                        return;
                      },
                      hintText:
                          "اختر عدد الموظفين", // Choose number of employees
                      keyboardType: TextInputType.number,
                      text: "عدد الموظفين", // number of employees
                    ),
                    const SizedBox(
                      height: 41,
                    ),
                    CustomTextFormFieldAuth(
                      validator: (value) {
                        return;
                      },
                      hintText: "اختر وظيفتك", // choose your major
                      text: "التخصص", // your major
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    CustomTextFormFieldAuth(
                      validator: (value) {
                        return;
                      },
                      hintText: "وظيفتتك داخل الشركة",
                      text: "الوظيفة",
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    CustomButton(
                      buttonName: "حفظ", // SignUp
                      onPressed: () {
                        // controller.signUp();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
