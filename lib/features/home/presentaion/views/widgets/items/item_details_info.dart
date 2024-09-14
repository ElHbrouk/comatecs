import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:flutter/material.dart';

class ItemDetailsInfo extends StatelessWidget {
  const ItemDetailsInfo({
    super.key,
    required this.itemEntity,
  });
  final ItemEntity itemEntity;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'تفاصيل المنتج',
            style: AppFonts.bold14.copyWith(
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 10),
            child: Text(
              maxLines: 2,
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              itemEntity.itemDescription,
              style: AppFonts.regular12.copyWith(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
