import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:flutter/material.dart';

class ItemDeliver extends StatelessWidget {
  const ItemDeliver({super.key, required this.itemEntity});
  final ItemEntity itemEntity;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'التسليم :',
          style: AppFonts.bold14.copyWith(
            color: Colors.black,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ' التوصيل :',
              style: AppFonts.regular12.copyWith(
                color: Colors.grey,
              ),
            ),
            Text(
              itemEntity.itemDeliveryPrice.toString(),
              style: AppFonts.regular16.copyWith(
                color: Colors.black,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ' التسليم :',
              style: AppFonts.regular12.copyWith(
                color: Colors.grey,
              ),
            ),
            Text(
              itemEntity.itemDeliveryDuration,
              style: AppFonts.regular16.copyWith(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
