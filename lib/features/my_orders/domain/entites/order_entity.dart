import 'package:comatecs/features/cart/domain/entites/cart_entity.dart';

class OrderEntity {
  final int orderId;
  final List<CartEntity> cartEntity;
  final num totalPrice;
  final String paymentCondition;
  final DateTime date;
  final String orderStatus;
  final String address;
  final num deliveryFee;
  final String paymentMethod;
  final num pointsSum;
  final String orderCode;

  OrderEntity({
    required this.orderId,
    required this.totalPrice,
    required this.paymentCondition,
    required this.date,
    required this.orderStatus,
    required this.address,
    required this.deliveryFee,
    required this.paymentMethod,
    required this.pointsSum,
    required this.orderCode,
    required this.cartEntity,
  });
}
