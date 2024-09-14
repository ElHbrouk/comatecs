import 'attachments.dart';

class Product {
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
  });

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
