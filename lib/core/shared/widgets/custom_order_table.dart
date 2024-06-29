import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomOrderTable extends StatelessWidget {
  const CustomOrderTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DataTable(
        border: TableBorder.all(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey[300]!,
        ),
        columns: [
          DataColumn(
            label: Text(
              'المنتج',
              style: AppFonts.regular14.copyWith(
                color: Colors.black,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              'الكمية',
              style: AppFonts.regular14.copyWith(
                color: Colors.black,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              'السعر',
              style: AppFonts.regular14.copyWith(
                color: Colors.black,
              ),
            ),
          ),
        ],
        rows: [
          DataRow(cells: [
            DataCell(
              Text(
                'اسم المنتج 1',
                style: AppFonts.regular14.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
            DataCell(
              Align(
                alignment: Alignment.center,
                child: Text(
                  '1',
                  style: AppFonts.regular14.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            DataCell(
              Text(
                '16.000 د.أ',
                style: AppFonts.regular14.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
          ]),
          DataRow(
            cells: [
              DataCell(
                Text(
                  'اسم المنتج 2',
                  style: AppFonts.regular14.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
              DataCell(
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    '2',
                    style: AppFonts.regular14.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              DataCell(
                Text(
                  '16.000 د.أ',
                  style: AppFonts.regular14.copyWith(
                    color: Colors.black,
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
