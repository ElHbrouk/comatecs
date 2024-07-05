import 'package:comatecs/core/shared/widgets/custom_button.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/login/custom_text_field.dart';
import 'package:flutter/material.dart';

class ShowModalBottomSheetAddress extends StatelessWidget {
  const ShowModalBottomSheetAddress({
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
              child: Text(
                'إضافة عنوان جديد',
                style: AppFonts.bold16.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Text(
            'العنوان *',
            style: AppFonts.regular14.copyWith(
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextField(
            hintText: 'أدخل عنوان بالتفصيل',
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'الدولة *',
            style: AppFonts.regular14.copyWith(
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextField(
            hintText: 'أدخل عنوان بالتفصيل',
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'المدينة *',
            style: AppFonts.regular14.copyWith(
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextField(
            hintText: 'أدخل عنوان بالتفصيل',
          ),
          const Expanded(
            child: SizedBox(
              height: 20.0,
            ),
          ),
          CustomButton(
            onPressed: () {},
            buttonName: "تأكيد",
          ),
        ],
      ),
    );
  }
}
