import 'package:comatecs/controllers/auth_controllers/forget_password/forget_password_controller.dart';
import 'package:comatecs/core/class/handling_data_view.dart';
import 'package:comatecs/core/functions/valid_input.dart';
import 'package:comatecs/core/shared/widgets/custom_button.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_text_form_field_auth.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_title_auth.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';

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

              hintText: '22', //Enter email
              text: '6', //Email
            ),
            const Spacer(),
            CustomButton(
              buttonName: "14",
              onPressed: onPressed,
            ),
          ],
        ),
      ),
    );
  }
}
