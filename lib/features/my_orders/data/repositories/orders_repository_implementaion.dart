import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/features/my_orders/data/data_sources/orders_remote_data_source.dart';
import 'package:comatecs/features/my_orders/domain/entites/order_entity.dart';
import 'package:comatecs/features/my_orders/domain/repositories/orders_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class OrdersRepositoryImplementaion extends OrdersRepository {
  final OrdersRemoteDataSource ordersRemoteDataSource;

  OrdersRepositoryImplementaion(this.ordersRemoteDataSource);
  @override
  Future<Either<Failure, List<OrderEntity>>> fetchOrders() async {
    try {
      return right(await ordersRemoteDataSource.fetchOrders());
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioExeption(dioException: e));
      } else {
        return left(
          ServerFailure(
            message: e.toString(),
          ),
        );
      }
    }
  }
}
