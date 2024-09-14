import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class PasswordEye extends StatelessWidget {
  const PasswordEye({super.key, this.onPressed, required this.obsecureText});
  final void Function()? onPressed;
  final bool obsecureText;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 20,
      onPressed: onPressed,
      icon: Icon(
        obsecureText == true ? FontAwesome.eye : FontAwesome.eye_off,
      ),
    );
  }
}
