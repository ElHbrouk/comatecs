import 'package:comatecs/core/utils/widgets/custom_button.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_text_form_field_auth.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_title_auth.dart';
import 'package:flutter/material.dart';

class CheckEmailViewBody extends StatelessWidget {
  const CheckEmailViewBody({
    super.key,
    required this.titleText,
    required this.onPressed,
  });
  final String titleText;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    // Get.put(ForgetPasswordControllerImpl());

    return Padding(
      padding: const EdgeInsets.only(bottom: 106, left: 20, right: 20),
      child: Form(
        // key: controller.key,
        child: Column(
          children: [
            CustomTitleAuth(
              text1: titleText,
            ),
            CustomTextFormFieldAuth(
              validator: (value) {
                return;
                // return validInput(
                //     value: value!, min: 5, max: 50, type: "email");
              },
              controller: TextEditingController(),
              keyboardType: TextInputType.emailAddress,

              hintText: "أدخل اسم المستخدم", //Enter email
              text: "إيميل المستخدم", //Email
            ),
            const Spacer(),
            CustomButton(
              buttonName: "إرسال",
              onPressed: onPressed,
            ),
          ],
        ),
      ),
    );
  }
}
