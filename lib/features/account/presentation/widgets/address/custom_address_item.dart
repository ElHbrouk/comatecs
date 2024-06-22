import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/features/account/data/models/address_item_model.dart';
import 'package:flutter/material.dart';

class CustomAddressItem extends StatelessWidget {
  const CustomAddressItem({
    super.key, required this.addressItemModel,
  });
  final AddressItemModel addressItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 16.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[300]!,
        ),
        borderRadius: BorderRadius.circular(
          5,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'العنوان',
                style: AppFonts.regular14.copyWith(
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                addressItemModel.details,
                style: AppFonts.regular12.copyWith(
                  color: Colors.grey[800],
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                ),
              ),
            ],
          ),
          const Divider(),
          Row(
            children: [
              Text(
                'المدينة',
                style: AppFonts.regular14.copyWith(
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                addressItemModel.city,
                style: AppFonts.regular12.copyWith(
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
          const Divider(),
          Row(
            children: [
              Text(
                'الدولة',
                style: AppFonts.regular14.copyWith(
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                addressItemModel.country,
                style: AppFonts.regular12.copyWith(
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
