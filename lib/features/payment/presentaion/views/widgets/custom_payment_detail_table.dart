import 'package:comatecs/core/utils/functions/custom_show_bottom_sheet.dart';
import 'package:comatecs/core/utils/app_colors.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/core/utils/functions/get_total_cart_price.dart';
import 'package:comatecs/features/cart/domain/entites/cart_entity.dart';
import 'package:comatecs/features/payment/presentaion/views/widgets/show_bottom_sheet_promo_code.dart';
import 'package:flutter/material.dart';

class CustomPaymentDetailTable extends StatelessWidget {
  const CustomPaymentDetailTable({super.key, required this.cartEntity});
final List<CartEntity> cartEntity;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: DataTable(
        border: TableBorder.all(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey[300]!,
        ),
        columns: [
          DataColumn(
            label: Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.sizeOf(context).width * 0.25,
              ),
              child: Text(
                'اجمالي التوصيل',
                style: AppFonts.regular14.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          DataColumn(
            label: Text(
              '5 د.أ',
              style: AppFonts.regular14.copyWith(
                color: Colors.black,
              ),
            ),
          ),
        ],
        rows: [
           DataRow(cells: [
            const DataCell(
              Text(
                'السعر الإجمالي',
                style: AppFonts.bold14,
              ),
            ),
            DataCell(
              Text(
                getTotalcartPrice(cartEntity).toString(),
                style: AppFonts.bold14,
              ),
            ),
          ]),
          DataRow(
            cells: [
              DataCell(
                Text(
                  'مجموع النقاط',
                  style: AppFonts.regular14.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
              DataCell(
                Text(
                  '230',
                  style: AppFonts.regular16.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(
                Text(
                  'رمز العرض الترويجي',
                  style: AppFonts.regular14.copyWith(
                    color: Colors.red,
                  ),
                ),
              ),
              DataCell(
                onTap: () {
                  customShowBottomSheet(
                    context: context,
                    child: const ShowBottomSheetPromoCode(),
                  );
                },
                Text(
                  'إدخال الرمز',
                  style: AppFonts.regular12.copyWith(
                    color: AppColors.primaryColor,
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
