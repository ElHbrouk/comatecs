import 'package:comatecs/features/my_orders/domain/entites/order_entity.dart';

import 'item.dart';
import 'user.dart';

class MyOrdersModel extends OrderEntity {
  int? id;
  String? status;
  double? total;
  DateTime? createAt;
  User? user;
  List<Item>? items;

  MyOrdersModel({
    this.id,
    this.status,
    this.total,
    this.createAt,
    this.user,
    this.items,
  }) : super(
          orderId: id!,
          cartEntity: items!,
          totalPrice: total!,
          paymentCondition: 'payed',
          date: createAt!,
          orderStatus: status!,
          address: 'Alexandria',
          deliveryFee: 50,
          paymentMethod: 'vodafone cash',
          pointsSum: 250,
          orderCode: '#1254631',
        );

  factory MyOrdersModel.fromJson(Map<String, dynamic> json) => MyOrdersModel(
        id: json['id'] as int?,
        status: json['status'] as String?,
        total: (json['total'] as num?)?.toDouble(),
        createAt: json['createAt'] == null
            ? null
            : DateTime.parse(json['createAt'] as String),
        user: json['user'] == null
            ? null
            : User.fromJson(json['user'] as Map<String, dynamic>),
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'status': status,
        'total': total,
        'createAt': createAt?.toIso8601String(),
        'user': user?.toJson(),
        'items': items?.map((e) => e.toJson()).toList(),
      };
}
