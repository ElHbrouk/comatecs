import 'package:comatecs/core/utils/app_colors.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/login/custom_text_form_field.dart';
import 'package:comatecs/features/payment/presentaion/views/widgets/pay_with_hand.dart';
import 'package:flutter/material.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({
    super.key,
  });

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  List<String> imagesPath = [
    ImageAssets.zain,
    ImageAssets.orangeMoney,
    ImageAssets.mahfazty,
    ImageAssets.dinark,
  ];
  int itemIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              itemIndex = 5;
            });
          },
          child: PayWithHand(
            borderColor:
                itemIndex == 5 ? AppColors.primaryColor : Colors.grey[300],
          ),
        ),
        SizedBox(
          height: 80,
          width: double.infinity,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              width: 8.0,
            ),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  itemIndex = index;
                });
              },
              child: Container(
                padding: const EdgeInsetsDirectional.all(3.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    5.0,
                  ),
                  border: Border.all(
                    color: itemIndex == index
                        ? AppColors.primaryColor
                        : Colors.grey[300]!,
                  ),
                ),
                child: Image.asset(
                  height: 80,
                  imagesPath[index],
                ),
              ),
            ),
          ),
        ),
        Visibility(
          visible: itemIndex != 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 19,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                titleAlignment: ListTileTitleAlignment.top,
                leading: const Icon(
                  size: 30,
                  Icons.info_outline,
                  color: Colors.grey,
                ),
                title: Text(
                  'لإتمام عملية الدفع عبر المحفظة، يُرجى استخدام رقم هاتف: [09987412536]',
                  style: AppFonts.bold16.copyWith(
                    color: Colors.grey,
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                titleAlignment: ListTileTitleAlignment.top,
                leading: const Icon(
                  size: 30,
                  Icons.info_outline,
                  color: Colors.grey,
                ),
                title: Text(
                  'سوف يتم إرسال رمز عملية (المرجع) الشراء الخاص بهذه العمليه , يرجى ادخاله',
                  style: AppFonts.bold16.copyWith(
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(
                height: 33,
              ),
              Text(
                'رمز عمليه (المرجع)',
                style: AppFonts.regular14.copyWith(
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  bottom: 20.0,
                ),
                child: CustomTextFormField(
                  keyboardType: TextInputType.number,
                  hintText: 'أدخل الرقم',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
