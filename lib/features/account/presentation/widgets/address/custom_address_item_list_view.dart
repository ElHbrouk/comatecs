import 'package:comatecs/features/account/data/models/address_item_model.dart';
import 'package:comatecs/features/account/presentation/widgets/address/custom_address_item.dart';
import 'package:flutter/material.dart';

class CustomAddressItemListView extends StatelessWidget {
  const CustomAddressItemListView({super.key});
  final List<AddressItemModel> addressItemModel = const [
    AddressItemModel(details: 'تفاصيل عنوان', city: 'عمان', country: 'الأردن'),
    AddressItemModel(details: 'تفاصيل عنوان', city: 'عمان', country: 'الأردن'),
    AddressItemModel(details: 'تفاصيل عنوان', city: 'عمان', country: 'الأردن'),
    AddressItemModel(details: 'تفاصيل عنوان', city: 'عمان', country: 'الأردن'),
    AddressItemModel(details: 'تفاصيل عنوان', city: 'عمان', country: 'الأردن'),
    AddressItemModel(details: 'تفاصيل عنوان', city: 'عمان', country: 'الأردن'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: addressItemModel.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: CustomAddressItem(
          addressItemModel: addressItemModel[index],
        ),
      ),
    );
  }
}
