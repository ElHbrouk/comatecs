import 'package:comatecs/features/cart/domain/entites/cart_entity.dart';
import 'package:comatecs/features/payment/presentaion/views/widgets/payment_view_body.dart';
import 'package:flutter/material.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key, required this.cartEntity});
  final List<CartEntity> cartEntity;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PaymentViewBody(cartEntity: cartEntity,),
    );
  }
}
