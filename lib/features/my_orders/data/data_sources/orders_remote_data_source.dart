import 'package:comatecs/constants.dart';
import 'package:comatecs/core/services/shared_prefrences_singleton.dart';
import 'package:comatecs/core/utils/api_service.dart';
import 'package:comatecs/features/my_orders/data/models/my_orders_model/my_orders_model.dart';
import 'package:comatecs/features/my_orders/domain/entites/order_entity.dart';

abstract class OrdersRemoteDataSource {
  Future<List<OrderEntity>> fetchOrders();
}

class OrdersRemoteDataSourceImplementation extends OrdersRemoteDataSource {
  final ApiService _apiService;

  OrdersRemoteDataSourceImplementation(this._apiService);
  @override
  Future<List<OrderEntity>> fetchOrders() async {
    List<dynamic> data = await _apiService.getData(
      endPoint: 'orders',
      headers: {
        'Authorization':
            'Bearer ${await SharedPreferencesSingleton.getSecureString(key: kIsTokenGot)}',
      },
    );
    return getOrdersItems(data);
  }

  List<OrderEntity> getOrdersItems(List data) {
    List<OrderEntity> orders = [];
    for (var item in data) {
      orders.add(MyOrdersModel.fromJson(item));
    }
    return orders;
  }
}
