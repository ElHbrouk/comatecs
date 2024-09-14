import 'dart:convert';

import 'package:comatecs/constants.dart';
import 'package:comatecs/core/services/shared_prefrences_singleton.dart';
import 'package:comatecs/core/utils/api_service.dart';
import 'package:comatecs/features/cart/data/models/cart_model/cart_model.dart';
import 'package:comatecs/features/cart/domain/entites/cart_entity.dart';

abstract class CartRemoteDataSource {
  void addToCart({required String productId, required int quantity});
  void removeFromCart({required String productId});
  Future<List<CartEntity>> fetchCartItems();
  void updateQuantity({required String productId, required String quantity});
  Future<void> cartCheckout();
}

class CartRemoteDataSourceImplementation extends CartRemoteDataSource {
  final ApiService apiService;

  CartRemoteDataSourceImplementation(this.apiService);
  @override
  void addToCart({required String productId, required int quantity}) async {
    await apiService.postData(
      endPoint: 'cart/add',
      data: {
        "productId": productId,
        "quantity": quantity,
      },
      headers: {
        'Authorization':
            'Bearer ${await SharedPrefrencesSingleton.getSecureString(key: kIsTokenGot)}',
      },
    );
  }

  @override
  Future<List<CartEntity>> fetchCartItems() async {
    var data = await apiService.getData(
      endPoint: 'cart/summary',
      headers: {
        'Authorization':
            'Bearer ${await SharedPrefrencesSingleton.getSecureString(key: kIsTokenGot)}',
      },
    );
    SharedPrefrencesSingleton.remove(key: kCartItems);
    List<CartEntity> cartItems = getCartItems(data);

    print(getCartItemsDecoded(json
        .decode(SharedPrefrencesSingleton.getString(key: kCartItems))
        .toList())
        .where((item) =>
    item.item.itemId == 1).isNotEmpty);
    await SharedPrefrencesSingleton.setString(
      key: kCartItems,
      value: json.encode(cartItems
          .map<Map<String, dynamic>>((item) => item.toJson())
          .toList()),
    );
    // print(data);
    return cartItems;
  }

  @override
  void removeFromCart({required String productId}) async {
    apiService.deleteData(
      endPoint: 'cart/remove/$productId',
      headers: {
        'Authorization':
            'Bearer ${await SharedPrefrencesSingleton.getSecureString(key: kIsTokenGot)}',
      },
    );
  }

  @override
  void updateQuantity(
      {required String productId, required String quantity}) async {
    await apiService.patchData(
      endPoint: 'cart/update/$productId',
      data: {
        "quantity": quantity,
      },
      headers: {
        'Authorization':
            'Bearer ${await SharedPrefrencesSingleton.getSecureString(key: kIsTokenGot)}',
      },
    );
  }

  @override
  Future<void> cartCheckout() async {
    await apiService.postData(
      endPoint: 'cart/checkout',
      headers: {
        'Authorization':
            'Bearer ${await SharedPrefrencesSingleton.getSecureString(key: kIsTokenGot)}',
      },
    );
  }
}

List<CartEntity> getCartItems(Map<String, dynamic> data) {
  List<CartEntity> items = [];
  for (var product in data['cart']['items']) {
    items.add(CartModel.fromJson(product));
  }
  return items;
}
List<CartEntity> getCartItemsDecoded(List data) {
  List<CartEntity> items = [];
  for (var product in data) {
    items.add(CartModel.fromJson(product));
  }
  return items;
}
