import 'dart:typed_data';

import 'package:comatecs/core/utils/functions/get_pdf.dart';
import 'package:comatecs/core/utils/functions/get_total_cart_price.dart';
import 'package:comatecs/core/utils/widgets/custom_button.dart';
import 'package:comatecs/core/utils/widgets/custom_order_table.dart';
import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/features/account/presentation/views/widgets/custom_title_with_back_button.dart';
import 'package:comatecs/features/my_orders/domain/entites/order_entity.dart';
import 'package:comatecs/features/my_orders/presentation/views/widgets/summarized_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_to_pdf/flutter_to_pdf.dart';
import 'package:screenshot/screenshot.dart';

class OrderInvoiceViewBody extends StatefulWidget {
  const OrderInvoiceViewBody({
    super.key,
    required this.orderEntity,
  });
  final OrderEntity orderEntity;

  @override
  State<OrderInvoiceViewBody> createState() => _OrderInvoiceViewBodyState();
}

class _OrderInvoiceViewBodyState extends State<OrderInvoiceViewBody> {
  late ScreenshotController screenshotController;
  @override
  void initState() {
    screenshotController = ScreenshotController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTitleWithBackButton(
              title: 'فاتورة',
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Screenshot(
                  controller: screenshotController,
                  child:
                      OrderInvoiceTableswidget(orderEntity: widget.orderEntity),
                ),
              ),
            ),
            CustomButton(
              onPressed: () async {
                int invoiceNumber = 1;
                
                await screenshotController
                    .captureFromLongWidget(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.sizeOf(context).width,
                      ),
                      InheritedTheme.captureAll(
                        context,
                        OrderInvoiceTableswidget(
                          orderEntity: widget.orderEntity,
                        ),
                      ),
                      context: context,
                    )
                    .then((Uint8List? screenShot) => createPdf(screenShot!));

                savePdf(context, 'orders$invoiceNumber');

                invoiceNumber++;
              },
              buttonName: 'تصدير كملف pdf',
            ),
          ],
        ),
      ),
    );
  }
}

class OrderInvoiceTableswidget extends StatelessWidget {
  const OrderInvoiceTableswidget({
    super.key,
    required this.orderEntity,
  });

  final OrderEntity orderEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SummarizedItemCard(
          orderEntity: orderEntity,
        ),
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
        CustomOrderTable(
          cartEntity: orderEntity.cartEntity,
        ),
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
                DataRow(cells: [
                  const DataCell(
                    Text(
                      'السعر الإجمالي                              ',
                      style: AppFonts.bold14,
                    ),
                  ),
                  DataCell(
                    Text(
                      getTotalcartPrice(orderEntity.cartEntity).toString(),
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
    );
  }
}
