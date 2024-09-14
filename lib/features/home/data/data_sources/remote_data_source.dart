import 'package:comatecs/core/utils/api_service.dart';
import 'package:comatecs/features/home/data/models/categories_model/categories_model.dart';
import 'package:comatecs/features/home/data/models/products_model/products_model.dart';
import 'package:comatecs/features/home/domain/entites/category_entity.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<ItemEntity>> fetchProducts({int pageNumber = 0});
  Future<List<ItemEntity>> searchProducts();
  Future<List<CategoryEntity>> fetchCategories();
  Future<List<ItemEntity>> fetchFilteredProducts({
    categoryId = 1,
    minPrice = 0,
    maxPrice = 400,
  });
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<ItemEntity>> fetchProducts({int pageNumber = 1}) async {
    List data = await apiService.getData(
        endPoint: 'pagination/products?pageSize=10&page=1');

    List<ItemEntity> products = getProducts(data[0]);

    return products;
  }

  @override
  Future<List<CategoryEntity>> fetchCategories() async {
    List data = await apiService.getData(endPoint: 'products/categories');

    List<CategoryEntity> categories = getCategories(data);
    return categories;
  }

  @override
  Future<List<ItemEntity>> fetchFilteredProducts({
    categoryId = 1,
    minPrice = 0,
    maxPrice = 400,
  }) async {
    var data = await apiService.getData(
      endPoint:
          'products/filter?categoryId=$categoryId&minPrice=$minPrice&maxPrice=$maxPrice',
    );

    return getProducts(data);
  }

  @override
  Future<List<ItemEntity>> searchProducts({String? name}) async {
    var data =
        await apiService.getData(endPoint: 'products/search?query=$name');

    return getProducts(data);
  }
}

List<ItemEntity> getProducts(List data) {
  List<ItemEntity> products = [];
  for (var product in data) {
    products.add(
      ProductsModel.fromJson(product),
    );
  }
  return products;
}

List<CategoryEntity> getCategories(List data) {
  List<CategoryEntity> categories = [];
  for (var product in data) {
    categories.add(
      CategoriesModel.fromJson(product),
    );
  }
  return categories;
}
