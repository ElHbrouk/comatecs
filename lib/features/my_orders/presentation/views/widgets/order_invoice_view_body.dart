import 'package:comatecs/core/utils/widgets/custom_button.dart';
import 'package:comatecs/core/utils/widgets/custom_order_table.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/features/account/presentation/views/widgets/custom_title_with_back_button.dart';
import 'package:comatecs/features/my_orders/presentation/views/widgets/summarized_item_card.dart';
import 'package:flutter/material.dart';

class OrderInvoiceViewBody extends StatelessWidget {
  const OrderInvoiceViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 16.0,
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomTitleWithBackButton(
                      title: 'فاتورة',
                    ),
                    const SummarizedItemCard(),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 24.0,
                        right: 16.0,
                        bottom: 16.0,
                      ),
                      child: Text(
                        'تفاصيل الطلب',
                        style: AppFonts.bold14.copyWith(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const CustomOrderTable(),
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: DataTable(
                          border: TableBorder.all(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey[300]!,
                          ),
                          columns: [
                            DataColumn(
                              label: Text(
                                'اجمالي التوصيل',
                                style: AppFonts.regular14.copyWith(
                                  color: Colors.black,
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
                            const DataRow(cells: [
                              DataCell(
                                Text(
                                  'السعر الإجمالي                              ',
                                  style: AppFonts.bold14,
                                ),
                              ),
                              DataCell(
                                Text(
                                  '16.000 د.أ',
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
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            CustomButton(
              onPressed: () {},
              buttonName: 'تصدير كملف pdf',
            ),
          ],
        ),
      ),
    );
  }
}
