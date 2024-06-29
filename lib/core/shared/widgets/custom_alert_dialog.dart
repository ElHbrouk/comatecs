import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
    required this.title,
     this.endIndent,
    required this.content,
    required this.textRightButton,
    this.height,
    required this.onPressedRightButtom,
  });
  final double? height;
  final double? endIndent;
  final String title;
  final String content;
  final String textRightButton;
  final void Function() onPressedRightButtom;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        height: height ?? 120,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            Text(
              title,
              style: AppFonts.regular16.copyWith(
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Text(
                content,
                style: AppFonts.regular12.copyWith(
                  color: Colors.grey,
                ),
              ),
            ),
            const Divider(),
            IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 5.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(),
                        onPressed: onPressedRightButtom,
                        child: Text(
                          textRightButton,
                          style: AppFonts.regular16.copyWith(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                     VerticalDivider(
                      endIndent: endIndent??0.0,
                     ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          context.pop();
                        },
                        child: Text(
                          'الغاء',
                          style: AppFonts.regular16.copyWith(
                            color: Colors.black,
                          ),
                        ),
                      ),
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
