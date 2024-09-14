import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/features/my_orders/domain/entites/order_entity.dart';
import 'package:dartz/dartz.dart';

abstract class OrdersRepository {
  Future<Either<Failure, List<OrderEntity>>> fetchOrders();
}
