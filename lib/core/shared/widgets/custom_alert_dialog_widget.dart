import 'package:comatecs/constants.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAlertDialogWidget extends StatelessWidget {
  const CustomAlertDialogWidget({
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
    return Container(
      padding: const EdgeInsets.only(top: 8.0),
      height: height ?? MediaQuery.sizeOf(context).height * 0.14,
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
              horizontal: kHorizontalPadding,
            ),
            child: Text(
              content,
              style: AppFonts.regular12.copyWith(
                color: Colors.grey,
              ),
            ),
          ),
          const Divider(),
          Row(
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
                child: const VerticalDivider(),
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
        ],
      ),
    );
  }
}
