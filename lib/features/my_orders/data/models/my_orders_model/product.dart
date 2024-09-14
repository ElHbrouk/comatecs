import 'package:comatecs/features/home/domain/entites/item_entity.dart';

import 'attachments.dart';

class Product extends ItemEntity {
  int? id;
  String? name;
  double? price;
  String? description;
  String? sku;
  int? quantity;
  String? features;
  Attachments? attachments;
  double? delivery;
  String? image;
  String? deliveryDuration;

  Product({
    this.id,
    this.name,
    this.price,
    this.description,
    this.sku,
    this.quantity,
    this.features,
    this.attachments,
    this.delivery,
    this.image,
    this.deliveryDuration,
  }) : super(
          itemName: name!,
          itemImage:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbJaAaxjoUE666w-5xxhVconbUkMq-u7ps0g&s',
          itemPrice: price!,
          itemId: id!,
          itemQuantity: quantity!,
          itemFeatures: features!,
          itemDescription: description!,
          itemDeliveryDuration: deliveryDuration!,
          itemDeliveryPrice: delivery!,
        );

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'] as int?,
        name: json['name'] as String?,
        price: (json['price'] as num?)?.toDouble(),
        description: json['description'] as String?,
        sku: json['sku'] as String?,
        quantity: json['quantity'] as int?,
        features: json['features'] as String?,
        // attachments: json['attachments'] == null
        //     ? null
        //     : Attachments.fromJson(json['attachments'] as Map<String, dynamic>),
        delivery: (json['delivery'] as num?)?.toDouble(),
        image: json['image'] as String?,
        deliveryDuration: json['deliveryDuration'] as String?,
      );

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'price': price,
        'description': description,
        'sku': sku,
        'quantity': quantity,
        'features': features,
        'attachments': attachments?.toJson(),
        'delivery': delivery,
        'image': image,
        'deliveryDuration': deliveryDuration,
      };
}
