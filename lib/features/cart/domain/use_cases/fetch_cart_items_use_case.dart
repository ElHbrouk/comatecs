import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/core/use_cases/use_case.dart';
import 'package:comatecs/features/cart/domain/entites/cart_entity.dart';
import 'package:comatecs/features/cart/domain/repositories/cart_repository.dart';
import 'package:dartz/dartz.dart';

class FetchCartItemsUseCase extends UseCaseWithoutParam<List<CartEntity>> {
  final CartRepository cartRepository;

  FetchCartItemsUseCase({required this.cartRepository});
  @override
  Future<Either<Failure, List<CartEntity>>> call() {
    return cartRepository.fetchCartItems();
  }
}
