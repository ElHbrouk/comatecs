import 'package:comatecs/core/utils/app_colors.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/custom_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerifyCodeSignUpBody extends StatelessWidget {
  const VerifyCodeSignUpBody({
    super.key,
    this.onSubmit,
  });
  final void Function(String)? onSubmit;

  @override
  Widget build(BuildContext context) {
    // Get.put(VerifySignUpControllerImpl());
    return Padding(
      padding: const EdgeInsets.only(bottom: 106, left: 20, right: 20),
      child: Column(
        children: [
          const CustomTitleAuth(
            text1: '46',
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Text(
              'enter the verify code sent to:\n  ',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          OtpTextField(
            borderRadius: BorderRadius.circular(20),
            textStyle: Theme.of(context).textTheme.bodyLarge,
            fieldWidth: 50.0,
            alignment: Alignment.center,
            numberOfFields: 5,
            enabledBorderColor: Colors.grey[500]!,
            focusedBorderColor: AppColors.primaryColor,
            borderColor: AppColors.primaryColor,
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              // controller.goToSignUpSuccess(verificationCode);
            }, // end onSubmit
          ),
        ],
      ),
    );
  }
}
