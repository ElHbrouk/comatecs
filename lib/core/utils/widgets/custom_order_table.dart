import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/features/cart/domain/entites/cart_entity.dart';
import 'package:flutter/material.dart';

class CustomOrderTable extends StatelessWidget {
  const CustomOrderTable({super.key, required this.cartEntity});
  final List<CartEntity> cartEntity;
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
        rows: cartEntity.map(
          (cartEntity) {
            return DataRow(
              cells: [
                DataCell(
                  Text(
                    cartEntity.item.itemName,
                    style: AppFonts.regular14.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ),
                DataCell(
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      cartEntity.itemCartQuantity.toString(),
                      style: AppFonts.regular14.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    '${cartEntity.itemCartQuantity * cartEntity.item.itemPrice}',
                    style: AppFonts.regular14.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            );
          },
        ).toList(),
      ),
    );
  }
}
