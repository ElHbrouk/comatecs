import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/core/use_cases/use_case.dart';
import 'package:comatecs/features/cart/domain/repositories/cart_repository.dart';
import 'package:dartz/dartz.dart';

class CartCheckoutUseCase extends UseCaseWithoutParam<void> {
  final CartRepository cartRepository;

  CartCheckoutUseCase(this.cartRepository);

  @override
  Future<Either<Failure, void>> call() async {
    return await cartRepository.cartCheckout();
  }
}