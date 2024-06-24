import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/my_orders/data/payment_item_model.dart';
import 'package:comatecs/features/my_orders/presentation/widgets/tab_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TabBarItemListView extends StatelessWidget {
  const TabBarItemListView({
    super.key,
    required this.paymentItemModel,
    required this.paymentStatus,
    required this.orderStatus,
  });
  final List<PaymentItemModel> paymentItemModel;
  final Color paymentStatus;
  final Color orderStatus;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(5.0),
          onTap: () {
            context.push(AppRoutes.orderDetailsView);
          },
          child: TabBarItem(
            paymentItemModel: paymentItemModel[index],
            paymentStatus: paymentStatus,
            orderStatus: orderStatus,
          ),
        ),
      ),
    );
  }
}
