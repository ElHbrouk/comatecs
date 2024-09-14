import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/core/use_cases/use_case.dart';
import 'package:comatecs/features/my_orders/domain/entites/order_entity.dart';
import 'package:comatecs/features/my_orders/domain/repositories/orders_repository.dart';
import 'package:dartz/dartz.dart';

class FetchOrdersUseCase extends UseCaseWithoutParam<List<OrderEntity>> {
  final OrdersRepository ordersRepository;

  FetchOrdersUseCase(this.ordersRepository);
  @override
  Future<Either<Failure, List<OrderEntity>>> call() async {
    return await ordersRepository.fetchOrders();
  }
}
