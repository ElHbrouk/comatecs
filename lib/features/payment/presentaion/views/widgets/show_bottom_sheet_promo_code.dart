import 'package:comatecs/constants.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:comatecs/core/utils/widgets/custom_button.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/login/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShowBottomSheetPromoCode extends StatelessWidget {
  const ShowBottomSheetPromoCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.6,
      width: double.infinity,
      margin: const EdgeInsetsDirectional.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.2,
              height: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.all(16),
            child: Align(
              alignment: Alignment.centerRight,
              child: Row(
                children: [
                  SvgPicture.asset(
                    ImageAssets.discount,
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    'تطبيق الرمز الترويجي',
                    style: AppFonts.bold16.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: Text(
              'رمز العرض الترويجي',
              style: AppFonts.regular14.copyWith(
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kHorizontalPadding,
            ),
            child: CustomTextFormField(
              hintText: 'أدخل الرمز هنا',
            ),
          ),
          const Spacer(),
          CustomButton(
            onPressed: () {},
            buttonName: "تأكيد",
          ),
        ],
      ),
    );
  }
}
