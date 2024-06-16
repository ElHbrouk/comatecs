import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCartButton extends StatelessWidget {
  const CustomCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsetsDirectional.all(10),
        margin: const EdgeInsetsDirectional.only(end: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 1,
            color: Colors.grey,
          ),
        ),
        child: const Icon(
          FontAwesomeIcons.cartPlus,
        ),
      ),
    );
  }
}
