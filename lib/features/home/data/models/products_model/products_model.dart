import 'package:comatecs/features/home/domain/entites/item_entity.dart';

import 'attachments.dart';
import 'category.dart';

class ProductsModel extends ItemEntity {
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
  Category? category;

  ProductsModel({
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
    this.category,
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

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
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
        category: json['category'] == null
            ? null
            : Category.fromJson(json['category'] as Map<String, dynamic>),
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
        'category': category?.toJson(),
      };
}
