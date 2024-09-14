import 'package:comatecs/core/utils/widgets/custom_button.dart';
import 'package:comatecs/core/utils/widgets/custom_password_field.dart';
import 'package:comatecs/features/account/presentation/views/widgets/custom_title_with_back_button.dart';
import 'package:flutter/material.dart';

class EditPasswordViewBody extends StatelessWidget {
  const EditPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30, left: 20, right: 20),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: CustomTitleWithBackButton(
                title: 'تعديل كلمة المرور',
              ),
            ),
            Expanded(
              child: Form(
                // key: controller.key,
                child: Column(
                  children: [
                    CustomPasswordField(
                      hintText: " أدخل كلمة المرور",
                      text: ' كلمة المرور',
                      controller: TextEditingController(),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomPasswordField(
                      hintText: " تأكيد كلمة المرور",
                      text: ' تأكيد كلمة المرور',
                      controller: TextEditingController(),
                    ),
                    const Spacer(),
                    CustomButton(
                      buttonName: "حفظ",
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
