import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class PasswordEye extends StatelessWidget {
  const PasswordEye({super.key, this.onPressed,  this.text = true});
  final void Function()? onPressed;
  final bool text;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 20,
      onPressed: onPressed,
      icon:  Icon(
        text == true? FontAwesome.eye: FontAwesome.eye_off,
      ),
    );
  }
}
