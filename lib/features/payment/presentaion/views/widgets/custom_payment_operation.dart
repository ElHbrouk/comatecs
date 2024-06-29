import 'package:comatecs/core/helper_functions/custom_show_bottom_sheet.dart';
import 'package:comatecs/core/shared/widgets/custom_button.dart';
import 'package:comatecs/core/utils/app_colors.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:comatecs/features/account/presentation/views/widgets/address/show_modal_bottom_sheet_address.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomPaymentOperation extends StatefulWidget {
  const CustomPaymentOperation({
    super.key,
  });

  @override
  State<CustomPaymentOperation> createState() => _CustomPaymentOperationState();
}

List<String> options = [
  'استلام شخصي',
  'توصيل الطلب',
];
List<String> addresses = [
  'عنوان 1',
  'عنوان 2',
];

class _CustomPaymentOperationState extends State<CustomPaymentOperation> {
  String currentOption = options[0];
  String currentAddress = addresses[0];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsetsDirectional.symmetric(
            vertical: 16.0,
          ),
          padding: const EdgeInsetsDirectional.symmetric(
            vertical: 16.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Colors.grey[300]!,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RadioListTile<String>(
                value: options[0],
                groupValue: currentOption,
                onChanged: (value) {
                  setState(() {
                    currentOption = value!;
                  });
                },
                title: Text(options[0]),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 16.0,
                  right: 24.0,
                ),
                child: Text(
                  'استلام الطلب من مقر الرئيسي للشركة',
                  style: AppFonts.regular12.copyWith(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsetsDirectional.symmetric(
            vertical: 16.0,
          ),
          padding: const EdgeInsetsDirectional.symmetric(
            vertical: 16.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Colors.grey[300]!,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RadioListTile<String>(
                value: options[1],
                groupValue: currentOption,
                onChanged: (value) {
                  setState(() {
                    currentOption = value!;
                  });
                },
                title: Text(
                  options[1],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 16.0,
                  right: 24.0,
                ),
                child: Text(
                  'توصيل الطلب إلى عنوان التوصيل الذي تحدده',
                  style: AppFonts.regular12.copyWith(color: Colors.grey),
                ),
              ),
              currentOption == options[1]
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.0),
                          child: Text(
                            'عنوان التوصيل',
                            style: AppFonts.regular14,
                          ),
                        ),
                        RadioListTile<String>(
                          secondary: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              ImageAssets.edit,
                            ),
                          ),
                          value: addresses[0],
                          groupValue: currentAddress,
                          onChanged: (value) {
                            setState(() {
                              currentAddress = value!;
                            });
                          },
                          title: Text(
                            addresses[0],
                            style: AppFonts.regular14.copyWith(
                              color: currentAddress == addresses[0]
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                        ),
                        RadioListTile<String>(
                          secondary: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              ImageAssets.edit,
                            ),
                          ),
                          value: addresses[1],
                          groupValue: currentAddress,
                          onChanged: (value) {
                            setState(() {
                              currentAddress = value!;
                            });
                          },
                          title: Text(
                            addresses[1],
                            style: AppFonts.regular14.copyWith(
                              color: currentAddress == addresses[1]
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 16.0,
                            left: 16.0,
                            top: 30,
                            bottom: 16.0,
                          ),
                          child: CustomButton(
                            textColor: AppColors.primaryColor,
                            onPressed: () {
                              customShowBottomSheet(
                                context: context,
                                child: const ShowModalBottomSheetAddress(),
                              );
                            },
                            buttonName: 'إضافة عنوان جديد',
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
