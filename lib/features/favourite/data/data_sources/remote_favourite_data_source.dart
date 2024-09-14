
import 'package:comatecs/constants.dart';
import 'package:comatecs/core/services/shared_prefrences_singleton.dart';
import 'package:comatecs/core/utils/api_service.dart';
import 'package:comatecs/features/home/data/models/products_model/products_model.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';

abstract class RemoteFavouriteDataSource {
  Future<List<ItemEntity>> fetchFavouriteItems();
  void addToFavourite({required String id});
  void removeFromFavourite({required String id});
}

class RemoteFavouriteDataSourceImplmentation
    implements RemoteFavouriteDataSource {
  final ApiService apiService;

  RemoteFavouriteDataSourceImplmentation(this.apiService);
  @override
  Future<List<ItemEntity>> fetchFavouriteItems() async {
    SharedPrefrencesSingleton.remove(key: kFavorites);
    var response = await apiService.getData(
      endPoint: 'favorites',
      headers: {
        'Authorization':
            'Bearer ${await SharedPrefrencesSingleton.getSecureString(key: kIsTokenGot)}',
      },
    );
    List<ItemEntity> items = getFavouriteItems(response);
    SharedPrefrencesSingleton.setStringList(
      key: kFavorites,
      value: items.map((item) => item.itemId.toString()).toList(),
    );

    return items;
  }

  @override
  void addToFavourite({String id = '1'}) async {
    await apiService.postData(
      endPoint: 'favorites/$id',
      data: {},
      headers: {
        'Authorization':
            'Bearer ${await SharedPrefrencesSingleton.getSecureString(key: kIsTokenGot)}',
      },
    );
  }

  @override
  void removeFromFavourite({String id = '1'}) async {
    apiService.deleteData(
      endPoint: 'favorites/$id',
      headers: {
        'Authorization':
            'Bearer ${await SharedPrefrencesSingleton.getSecureString(key: kIsTokenGot)}',
      },
    );
  }

  List<ItemEntity> getFavouriteItems(List data) {
    List<ItemEntity> items = [];
    items.clear();
    for (var item in data) {
      items.add(
        ProductsModel.fromJson(item['product']),
      );
    }
    return items;
  }
}
