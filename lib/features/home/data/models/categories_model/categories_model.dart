import 'package:comatecs/features/home/domain/entites/category_entity.dart';

import 'product.dart';

class CategoriesModel extends CategoryEntity {
  int? id;
  String? name;
  List<Product>? products;

  CategoriesModel({this.id, this.name, this.products})
      : super(
          categoryId: id!,
          categoryName: name!,
          categoryProducts: products!,
        );

  factory CategoriesModel.fromJson(Map<String, dynamic> json) {
    return CategoriesModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'products': products?.map((e) => e.toJson()).toList(),
      };
}
