import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/core/utils/widgets/custom_button.dart';
import 'package:comatecs/core/utils/app_colors.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:comatecs/features/home/presentaion/cubits/fetch_filtered_items_cubit/fetch_filtered_items_cubit.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/custom_drop_down_menu.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/custom_range_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class ShowModalBottomSheetItem extends StatefulWidget {
  const ShowModalBottomSheetItem({
    super.key,
  });

  @override
  State<ShowModalBottomSheetItem> createState() =>
      _ShowModalBottomSheetItemState();
}

class _ShowModalBottomSheetItemState extends State<ShowModalBottomSheetItem> {
  late TextEditingController categoryId;
  RangeValues values = const RangeValues(0, 10000);
  // late TextEditingController maxPrice;
  // late TextEditingController minPrice;

  @override
  void initState() {
    categoryId = TextEditingController();
    // maxPrice = TextEditingController();
    // minPrice = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    categoryId.dispose();
    // maxPrice.dispose();
    // minPrice.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.6,
      width: double.infinity,
      margin: const EdgeInsetsDirectional.all(15),
      child: Column(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 0.2,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 20,
              ),
              SvgPicture.asset(
                ImageAssets.filter,
                height: 24,
                colorFilter: const ColorFilter.mode(
                  AppColors.primaryColor,
                  BlendMode.srcIn,
                ),
              ),
              Text(
                ' تصفية المنتج من خلال :',
                style: AppFonts.bold16.copyWith(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          CustomDropDownMenu(
            label: 'اختر نوع الفئة',
            dropdownMenuEntries: const [
              DropdownMenuEntry(value: "hi", label: 'معدات صناعية'),
              DropdownMenuEntry(value: "why", label: 'الأدوات والمعدات'),
              DropdownMenuEntry(value: "bye", label: 'عدد يدوية'),
              DropdownMenuEntry(value: "die", label: 'معدات صناعية'),
            ],
            text: ' فئة المنتج :',
            controller: categoryId,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomDropDownMenu(
            label: 'اختر العلامة التجارية',
            dropdownMenuEntries: const [
              DropdownMenuEntry(value: "hi", label: 'معدات صناعية'),
              DropdownMenuEntry(value: "why", label: 'الأدوات والمعدات'),
              DropdownMenuEntry(value: "bye", label: 'عدد يدوية'),
              DropdownMenuEntry(value: "die", label: 'معدات صناعية'),
            ],
            text: 'العلامة التجارية :',
            controller: TextEditingController(),
          ),
          CustomRangeSlider(
            onChanged: (newValues) {
              setState(() {
                values = newValues;
              });
            },
          ),
          const Spacer(),
          CustomButton(
            onPressed: () {
              BlocProvider.of<FetchFilteredItemsCubit>(context)
                  .fetchFilteredItems(
                categoryId: 1,
                maxPrice: values.end.toInt(),
                minPrice: values.start.toInt(),
              );
              context.push(AppRoutes.filteredItemsView);
            },
            buttonName: "تأكيد",
          ),
        ],
      ),
    );
  }
}
