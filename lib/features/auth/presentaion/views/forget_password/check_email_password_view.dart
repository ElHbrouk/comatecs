import 'package:comatecs/core/shared/widgets/custom_back_button.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/reset_password/forget_password_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    // Get.put(ForgetPasswordControllerImpl());
    return Scaffold(
      appBar: AppBar(leading: const CustomBackButton()),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: CheckEmailViewBody(
          titleText: "إعادة تعيين كلمة المرور",
          onPressed: () {
            context.push(AppRoutes.resetPasswordView);
            // controller.checkEmail();
          },
        ),
      ),
    );
  }
}
