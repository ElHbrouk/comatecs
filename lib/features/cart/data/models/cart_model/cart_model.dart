import 'package:comatecs/features/cart/domain/entites/cart_entity.dart';

import 'product.dart';

class CartModel extends CartEntity {
  int? id;
  int? quantity;
  Product? product;

  CartModel({this.id, this.quantity, this.product})
      : super(
          item: product!,
          cartItemId: id!,
          itemCartQuantity: quantity!,
        );

  factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
        id: json['id'] as int?,
        quantity: json['quantity'] as int?,
        product: json['product'] == null
            ? null
            : Product.fromJson(json['product'] as Map<String, dynamic>),
      );

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'quantity': quantity,
        'product': product?.toJson(),
      };
}
