import 'package:comatecs/core/utils/app_colors.dart';
import 'package:comatecs/features/my_orders/data/payment_item_model.dart';
import 'package:comatecs/features/my_orders/presentation/views/widgets/tab_bar_item_list_view.dart';
import 'package:flutter/material.dart';

class CompletedPayment extends StatelessWidget {
  const CompletedPayment({super.key});
  final List<PaymentItemModel> paymentItemModel = const [
    PaymentItemModel(
      id: '#1254631',
      date: '20/9/2023',
      paymentStatus: 'مدفوعة',
      orderStatus: 'مكتملة',
      price: '16.000',
    ),
    PaymentItemModel(
      id: '#1254631',
      date: '20/9/2023',
      paymentStatus: 'مدفوعة',
      orderStatus: 'مكتملة',
      price: '16.000',
    ),
    PaymentItemModel(
      id: '#1254631',
      date: '20/9/2023',
      paymentStatus: 'مدفوعة',
      orderStatus: 'مكتملة',
      price: '16.000',
    ),
    PaymentItemModel(
      id: '#1254631',
      date: '20/9/2023',
      paymentStatus: 'مدفوعة',
      orderStatus: 'مكتملة',
      price: '16.000',
    ),
    PaymentItemModel(
      id: '#1254631',
      date: '20/9/2023',
      paymentStatus: 'مدفوعة',
      orderStatus: 'مكتملة',
      price: '16.000',
    ),
    PaymentItemModel(
      id: '#1254631',
      date: '20/9/2023',
      paymentStatus: 'مدفوعة',
      orderStatus: 'مكتملة',
      price: '16.000',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return TabBarItemListView(
      paymentItemModel: paymentItemModel,
      paymentStatus: Colors.grey,
      orderStatus: AppColors.primaryColor,
    );
  }
}
