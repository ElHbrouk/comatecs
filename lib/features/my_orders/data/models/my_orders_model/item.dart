import 'package:comatecs/features/cart/domain/entites/cart_entity.dart';

import 'product.dart';

class Item extends CartEntity {
  int? id;
  int? quantity;
  double? price;
  Product? product;

  Item({this.id, this.quantity, this.price, this.product})
      : super(
         item: product!,
          cartItemId: id!,
          itemCartQuantity: quantity!,
         
 
        
        );

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json['id'] as int?,
        quantity: json['quantity'] as int?,
        price: (json['price'] as num?)?.toDouble(),
        product: json['product'] == null
            ? null
            : Product.fromJson(json['product'] as Map<String, dynamic>),
      );

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'quantity': quantity,
        'price': price,
        'product': product?.toJson(),
      };
}
