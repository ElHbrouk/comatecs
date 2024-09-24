import 'package:comatecs/features/auth/presentaion/views/widgets/custom_text_form_field_auth.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/password_eye.dart';
import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({
    super.key,
    required this.hintText,
    required this.text,
    required this.controller,
    this.validator,
  });
  final String hintText;
  final String text;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

bool obsecureText = true;

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  @override
  Widget build(BuildContext context) {
    return CustomTextFormFieldAuth(
      validator: widget.validator ??
          (value) {
            if (value == null || value.length < 8 || value.isEmpty) {
              return "كلمة المرور يجب الا يقل عن 8 حروف";
            } else {
              return null;
            }
          },
      controller: widget.controller,
      obscureText: obsecureText,
      hintText: " أدخل كلمة المرور", // enter password
      keyboardType: TextInputType.visiblePassword,
      text: "كلمة المرور", //Password
      suffixIcon: PasswordEye(
        onPressed: () {
          setState(() {
            obsecureText = !obsecureText;
          });
        },
        obsecureText: obsecureText,
      ),
    );
  }
}
