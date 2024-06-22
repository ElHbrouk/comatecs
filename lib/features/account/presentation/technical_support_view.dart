import 'package:comatecs/core/shared/widgets/custom_button.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/features/account/presentation/widgets/custom_title_with_back_button.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_text_form_field_auth.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/login/custom_text_field.dart';
import 'package:flutter/material.dart';

class TechnicalSupportView extends StatelessWidget {
  const TechnicalSupportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomTitleWithBackButton(
                    title: 'الدعم الفني',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      'إذا كان لديك أي استفسارات أو مشاكل، فلا تتردد في التواصل مع فريق الدعم الفني لدينا. سنكون سعداء للمساعدة في حل أي مشكلة تواجهك',
                      style: AppFonts.regular12.copyWith(
                        color: Colors.grey,
                      ),
                    ),
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
                    text: "إيميل المستخدم", //User Name
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
                  Text(
                    'نص الرسالة',
                    style: AppFonts.bold18.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextField(
                    hintText: 'اكتب هنا.....',
                    maxLines: 5,
                  ),
                  const SizedBox(
                    height: 41,
                  ),
                  CustomButton(
                    buttonName: 'إرسال',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
