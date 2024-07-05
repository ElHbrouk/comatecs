import 'package:comatecs/constants.dart';
import 'package:comatecs/core/shared/widgets/custom_button.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class PriceItemButton extends StatelessWidget {
  const PriceItemButton({
    super.key,
    required this.buttonName,
    required this.price,
    required this.onPressed,
  });
  final String buttonName;
  final String price;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: const EdgeInsetsDirectional.only(
        top: 16.0,
      ),
      padding: const EdgeInsetsDirectional.symmetric(
        horizontal: kHorizontalPadding,
      ),
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.grey[300]!,
      )),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ' المبلغ الاجمالي :',
                style: AppFonts.regular14.copyWith(
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                price,
                style: AppFonts.bold14,
              ),
            ],
          ),
          const Spacer(),
          Expanded(
            flex: 2,
            child: CustomButton(
              onPressed: onPressed,
              buttonName: buttonName,
            ),
          ),
        ],
      ),
    );
  }
}
