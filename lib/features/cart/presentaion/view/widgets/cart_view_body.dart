import 'package:comatecs/core/shared/widgets/custom_button.dart';
import 'package:comatecs/core/shared/widgets/custom_view_title.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/features/cart/presentaion/view/widgets/cart_item_list_view.dart';
import 'package:flutter/material.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 24.0,
        left: 20,
        right: 20,
      ),
      child: Column(
        children: [
          const CustomViewTitle(
            title: "السلة",
          ),
          const SizedBox(
            height: 16,
          ),
          const Expanded(
            child: CartItemListView(),
          ),
          Container(
            height: 70,
            margin: const EdgeInsetsDirectional.only(
              top: 16.0,
            ),
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 16,
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
                    const Text(
                      'JOD 32.000',
                      style: AppFonts.bold14,
                    ),
                  ],
                ),
                const Spacer(),
                Expanded(
                  flex: 2,
                  child: CustomButton(
                    onPressed: () {},
                    buttonName: "الشحن",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
