import 'package:comatecs/core/utils/functions/custom_show_bottom_sheet.dart';
import 'package:comatecs/core/utils/widgets/custom_button.dart';
import 'package:comatecs/features/account/presentation/views/widgets/address/custom_address_item_list_view.dart';
import 'package:comatecs/features/account/presentation/views/widgets/address/show_modal_bottom_sheet_address.dart';
import 'package:comatecs/features/account/presentation/views/widgets/custom_title_with_back_button.dart';
import 'package:flutter/material.dart';

class EditAddressViewBody extends StatelessWidget {
  const EditAddressViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 20.0,
        ),
        child: Column(
          children: [
            const CustomTitleWithBackButton(
              title: 'العنوان',
            ),
            const SizedBox(
              height: 30,
            ),
            const Expanded(
              child: CustomAddressItemListView(),
            ),
            CustomButton(
              onPressed: () {
                customShowBottomSheet(
                  context: context,
                  child: const ShowModalBottomSheetAddress(),
                );
              },
              buttonName: "أضافة عنوان جديد",
            ),
          ],
        ),
      ),
    );
  }
}
