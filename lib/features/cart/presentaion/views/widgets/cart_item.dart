import 'package:comatecs/core/helper_functions/custom_alert_dialog.dart';
import 'package:comatecs/core/shared/widgets/custom_alert_dialog.dart';
import 'package:comatecs/core/shared/widgets/custom_icon_button.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(bottom: 16),
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
      height: 140,
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.grey[300]!,
      )),
      child: Row(
        children: [
          Image.asset(
            height: 80,
            ImageAssets.imagesBox,
          ),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
                child: Text(
                  'الاسم التجاري الشائع',
                  style: AppFonts.regular14.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
              Row(
                children: [
                  CustomIconButton(
                    onPressed: () {
                      customAlertDialog(
                        context: context,
                        child: CustomAlertDialog(
                          height: 120,
                          title: 'حذف المنتج من السلة',
                          content: 'هل أنت متأكد من إزالة هذا المنتج من السلة؟',
                          textRightButton: 'حذف',
                          onPressedRightButtom: () {},
                        ),
                      );
                    },
                    icon: FontAwesomeIcons.minus,
                    color: false,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      top: 5.0,
                      start: 8.0,
                      end: 8.0,
                    ),
                    child: Text(
                      '1',
                      style: AppFonts.bold14.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  CustomIconButton(
                    onPressed: () {},
                    icon: FontAwesomeIcons.plus,
                    color: true,
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              Container(
                alignment: AlignmentDirectional.centerEnd,
                width: 80,
                margin: const EdgeInsetsDirectional.only(
                  top: 18.0,
                  bottom: 18.0,
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {},
                  child: SvgPicture.asset(
                    ImageAssets.delete,
                  ),
                ),
              ),
              const Text(
                'JOD 16.000',
                style: AppFonts.bold14,
              )
            ],
          ),
        ],
      ),
    );
  }
}
