import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:flutter/material.dart';

class CustomViewTitle extends StatelessWidget {
  const CustomViewTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: AppFonts.bold16.copyWith(
          color: Colors.black,
        ),
      ),
      leading: Image.asset(height: 30, ImageAssets.appLogo2),
    );
  }
}
