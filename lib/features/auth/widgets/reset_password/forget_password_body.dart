import 'package:comatecs/core/shared/widgets/custom_button.dart';
import 'package:comatecs/features/auth/widgets/custom_text_form_field_auth.dart';
import 'package:comatecs/features/auth/widgets/custom_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckEmailViewBody extends StatefulWidget {
  const CheckEmailViewBody({
    super.key,
    required this.titleText,
    required this.onPressed,
  });
  final String titleText;
  final Function() onPressed;
  @override
  State<CheckEmailViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<CheckEmailViewBody> {
  bool? check = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 106, left: 20, right: 20),
      child: Column(
        children: [
          CustomTitleAuth(
            text1: widget.titleText,
          ),
          CustomTextFormFieldAuth(
            keyboardType: TextInputType.emailAddress,
            hintText: '22'.tr, // enter user name
            text: '6'.tr,
          ),
          const Spacer(),
          CustomButton(
            buttonName: "14".tr,
            onPressed: widget.onPressed,
          ),
        ],
      ),
    );
  }
}
